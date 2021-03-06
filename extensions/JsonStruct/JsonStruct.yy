{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "1.1.0",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2020-04-23T20:46:34.661214-04:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "installdir": "",
  "files": [
    {"filename":"JsonStruct.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"__jsons_decode_array__","kind":2,"help":"__jsons_decode_array__(@seekrec, safe)","hidden":true,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"__jsons_decode_array__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_decode_bool__","kind":2,"help":"__jsons_decode_bool__(@seekrec)","hidden":true,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"__jsons_decode_bool__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_decode_real__","kind":2,"help":"__jsons_decode_real__(@seekrec)","hidden":true,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"__jsons_decode_real__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_decode_seek__","kind":2,"help":"__jsons_decode_seek__(@seekrec)","hidden":true,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"__jsons_decode_seek__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_decode_string__","kind":2,"help":"__jsons_decode_string__(@seekrec)","hidden":true,"returnType":1,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"__jsons_decode_string__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_decode_struct__","kind":2,"help":"__jsons_decode_struct__(@seekrec, safe)","hidden":true,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"__jsons_decode_struct__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_decode_subcontent__","kind":2,"help":"__jsons_decode_subcontent__(@seekrec, safe)","hidden":true,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"__jsons_decode_subcontent__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_decode_undefined__","kind":2,"help":"__jsons_decode_undefined__(@seekrec)","hidden":true,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"__jsons_decode_undefined__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_decrypt__","kind":2,"help":"__jsons_decrypt__(str, key)","hidden":true,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"__jsons_decrypt__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_encrypt__","kind":2,"help":"__jsons_encrypt__(str, key)","hidden":true,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"__jsons_encrypt__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_hex_to_decimal__","kind":2,"help":"__jsons_hex_to_decimal__(hexstr)","hidden":true,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"__jsons_hex_to_decimal__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_is_whitespace__","kind":2,"help":"__jsons_is_whitespace__(char)","hidden":true,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"__jsons_is_whitespace__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_rc4__","kind":2,"help":"__jsons_rc4__(@buffer, key, offset, length)","hidden":true,"returnType":2,"argCount":0,"args":[
            2,
            1,
            2,
            2,
          ],"resourceVersion":"1.0","name":"__jsons_rc4__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_clone","kind":2,"help":"jsons_clone(val)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"jsons_clone","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_decode","kind":2,"help":"jsons_decode(jsonstr)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"jsons_decode","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_decrypt","kind":2,"help":"jsons_decrypt(jsonencstr, [deckey], [decfunc])","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"jsons_decrypt","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_encode","kind":2,"help":"jsons_encode(val)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"jsons_encode","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_encrypt","kind":2,"help":"jsons_encrypt(thing, [enckey], [encfunc])","hidden":false,"returnType":1,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"jsons_encrypt","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_load","kind":2,"help":"jsons_load(fname)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"jsons_load","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_load_encrypted","kind":2,"help":"jsons_load_encrypted(fname, [deckey], [decfunc])","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"jsons_load_encrypted","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_real_encoder_detailed","kind":2,"help":"jsons_real_encoder_detailed(val)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"jsons_real_encoder_detailed","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_real_encoder_string_format","kind":2,"help":"jsons_real_encoder_string_format(val)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"jsons_real_encoder_string_format","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_save","kind":2,"help":"jsons_save(fname, thing)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"jsons_save","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_save_encrypted","kind":2,"help":"jsons_save_encrypted(fname, thing, [enckey], [encfunc])","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"jsons_save_encrypted","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_decode_safe","kind":2,"help":"jsons_decode_safe(jsonstr)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"jsons_decode_safe","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_decrypt_safe","kind":2,"help":"jsons_decrypt_safe(jsonencstr, [deckey], [decfunc])","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"jsons_decrypt_safe","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_load_safe","kind":2,"help":"jsons_load_safe(fname)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"jsons_load_safe","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_load_encrypted_safe","kind":2,"help":"jsons_load_encrypted_safe(fname, [deckey], [decfunc])","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"jsons_load_encrypted_safe","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__jsons_encode_formatted__","kind":2,"help":"__jsons_encode_formatted__(val, indent, currentDepth, maxDepth, colon, comma)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
            1,
            2,
            2,
            1,
            1,
          ],"resourceVersion":"1.0","name":"__jsons_encode_formatted__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_encode_formatted","kind":2,"help":"jsons_encode_formatted(val, [indent], [maxDepth], [colon], [comma])","hidden":false,"returnType":1,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"jsons_encode_formatted","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"jsons_save_formatted","kind":2,"help":"jsons_save_formatted(fname, val, [indent], [maxDepth], [colon], [comma])","hidden":false,"returnType":1,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"jsons_save_formatted","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"__jsons_decode_array__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_bool__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_real__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_seek__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_string__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_struct__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_subcontent__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_undefined__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decrypt__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_encode_formatted__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_encrypt__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_hex_to_decimal__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_is_whitespace__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_rc4__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_clone","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_decode","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_decode_safe","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_decrypt","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_decrypt_safe","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_encode","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_encode_formatted","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_encrypt","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_load","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_load_safe","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_load_encrypted","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_load_encrypted_safe","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_real_encoder_detailed","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_real_encoder_string_format","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_save","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_save_encrypted","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_save_formatted","path":"extensions/JsonStruct/JsonStruct.yy",},
      ],"resourceVersion":"1.0","name":null,"tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": null,
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "androidcodeinjection": "",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": -1,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "JsonStruct",
    "path": "folders/Libraries/JsonStruct.yy",
  },
  "resourceVersion": "1.2",
  "name": "JsonStruct",
  "tags": [],
  "resourceType": "GMExtension",
}