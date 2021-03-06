{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "1.1.10",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2020-05-02T22:26:36.2676373-04:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "installdir": "",
  "files": [
    {"filename":"LightweightDataStructures.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"__lds_array_sort_merger__","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
            2,
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"__lds_array_sort_merger__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__lds_array_sort_kernel__","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"__lds_array_sort_kernel__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__lds_array_shuffle__","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"__lds_array_shuffle__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__lds_array_sort__","kind":2,"help":"","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"__lds_array_sort__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__lds_rc4__","kind":2,"help":"__lds_rc4__(@buffer, key, offset, length)","hidden":true,"returnType":2,"argCount":0,"args":[
            2,
            1,
            2,
            2,
          ],"resourceVersion":"1.0","name":"__lds_rc4__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__lds_rc4_decrypt__","kind":2,"help":"__lds_rc4_decrypt__(str, key)","hidden":true,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"__lds_rc4_decrypt__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__lds_rc4_encrypt__","kind":2,"help":"__lds_rc4_encrypt__(str, key)","hidden":true,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"__lds_rc4_encrypt__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__lds_typeof__","kind":2,"help":"__lds_typeof__(thing)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"__lds_typeof__","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_reduce","kind":2,"help":"lds_reduce()","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"lds_reduce","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_expand","kind":2,"help":"lds_expand(data)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"lds_expand","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_copy","kind":2,"help":"lds_copy(thing, source)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"lds_copy","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_copy_deep","kind":2,"help":"lds_copy_deep(thing, source)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"lds_copy_deep","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_clone","kind":2,"help":"lds_clone(thing)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"lds_clone","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_clone_deep","kind":2,"help":"lds_clone_deep(thing)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"lds_clone_deep","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_write","kind":2,"help":"lds_write(thing)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"lds_write","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_read","kind":2,"help":"lds_read(str)","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"resourceVersion":"1.0","name":"lds_read","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_save","kind":2,"help":"lds_save(thing, filename)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
          ],"resourceVersion":"1.0","name":"lds_save","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_load","kind":2,"help":"lds_load(filename)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"lds_load","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_encrypt","kind":2,"help":"lds_encrypt(thing, <key>, <encfunc>)","hidden":false,"returnType":1,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"lds_encrypt","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_decrypt","kind":2,"help":"lds_decrypt(str, <key>, <decfunc>)","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"lds_decrypt","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_save_encrypted","kind":2,"help":"lds_save_encrypted(thing, filename, <key>, <encfunc>)","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"lds_save_encrypted","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"lds_load_encrypted","kind":2,"help":"lds_load_encrypted(filename, <key>, <decfunc>)","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"lds_load_encrypted","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"__lds_array_copy__","kind":2,"help":"__lds_array_copy__(dest, dest_index, src, src_index, length)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"__lds_array_copy__","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"__lds_array_copy__","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"__lds_array_sort_merger__","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"__lds_array_sort_kernel__","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"__lds_array_shuffle__","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"__lds_array_sort__","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"__lds_rc4__","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"__lds_rc4_decrypt__","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"__lds_rc4_encrypt__","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"__lds_typeof__","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_reduce","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_expand","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_copy","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_copy_deep","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_clone","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_clone_deep","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_write","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_read","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_save","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_load","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_encrypt","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_decrypt","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_save_encrypted","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
        {"name":"lds_load_encrypted","path":"extensions/LightweightDataStructures/LightweightDataStructures.yy",},
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
    "name": "LightweightDataStructures",
    "path": "folders/Libraries/LightweightDataStructures.yy",
  },
  "resourceVersion": "1.2",
  "name": "LightweightDataStructures",
  "tags": [],
  "resourceType": "GMExtension",
}