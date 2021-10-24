///@func QueueValueActor(interval, onPop, <opts>)
///@param {real|int64} interval The time interval between releases
///@param {method} onPop Method to perform upon each value release
///@param {array} <opts> Additional options
///@desc GMTwerk actor for capturing incoming values and releasing them one at a time in fixed time intervals
function QueueValueActor(_interval, _onPop) : GMTwerkActor() constructor {
	///@func onAct(time)
	///@param {real} time Steps (non-delta time) or milliseconds (delta time) passed
	///@desc Per-step action for this actor
	static onAct = function(_timePassed) {
		// If queue is active, tick down and release value updates
		if (_dequeuePos >= 0) {
			time -= _timePassed;
			while (time <= 0) {
				if (_enqueuePos-_dequeuePos > 0) {
					pop();
				} else {
					_clear(-1);
					time = interval;
					break;
				}
				time += interval;
			}
		} else {
			time = interval;
		}
	};

	///@func _clear(pos)
	///@param pos The position to reset to
	///@desc Low-level clear, no triggering onClear
	static _clear = function(pos) {
		array_resize(queue, 0);
		_dequeuePos = pos;
		_enqueuePos = pos;
	};

	///@func clear()
	///@desc Clear the queue, triggering onClear
	static clear = function() {
		_clear(-1);
		onClear();
		return self;
	};

	///@func push(val)
	///@param val The value to capture
	///@desc Capture a value and put it in queue, triggering onPush
	static push = function(val) {
		onPush(val);
		if (_enqueuePos < 0) {
			onPop(val);
			++_dequeuePos;
			++_enqueuePos;
		} else {
			queue[@_enqueuePos++] = val;
		}
		return self;
	};
	
	///@func pop()
	///@desc Dequeue and return the upcoming value, triggering onPop
	static pop = function() {
		var val = queue[_dequeuePos++];
		if (_dequeuePos >= _enqueuePos) {
			_clear(0);
		}
		onPop(val);
		return val;
	};
	
	///@func size()
	///@desc Return the number of pending values
	static size = function() {
		return _enqueuePos-_dequeuePos;
	};

	///@func top(n)
	///@param <n> (Optional) The entry to look up past the current head
	///@desc Return the (n+1)th next entry, undefined if there is nothing
	static top = function() {
		var _targetPos = ((argument_count > 0) ? argument[0] : 0)+_dequeuePos;
		return (_targetPos < _enqueuePos) ? queue[_targetPos] : undefined;
	};

	// Constructor
	interval = _interval;
	time = _interval;
	onPop = _onPop;
	onPush = noop;
	onClear = noop;
	if (argument_count > 2) includeOpts(argument[2]);

	// Convert times
	time = convertTime(time);
	interval = convertTime(interval);

	// Start with empty queue
	queue = [];
	_dequeuePos = -1;
	_enqueuePos = -1;
}

///@func QueueValue(interval, onPop, <opts>)
///@param {real|int64} interval The time interval to 
///@param {method} onPop Method to perform upon each value release
///@param {array} <opts> Additional options
///@desc Enqueue and return a GMTwerk actor for capturing incoming values and releasing them one at a time in fixed time intervals
function QueueValue(_interval, _onPop) {
	var actor = new QueueValueActor(_interval, _onPop, (argument_count > 2) ? argument[2] : undefined);
	__gmtwerk_insert__(actor);
	return actor;
}
