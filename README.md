# Unified Library Test

This is a centralized project containing all automated tests for GMS 2022+ libraries by Dickson Law. A correct run should go through each test room in turn, ending in a `c_lime` screen.

## Tested Libraries

- Extended Collision Functions 1.1.0
- GMDictionary 1.0.1
- GMLinear 2.3.0
- GMTactician MCTS Tree 1.0.0
- GMTactician Minimax Tree 1.0.0
- GMTwerk 2.0.2
- GMXorWow 1.0.0
- JSON Struct 1.1.0
- Lightweight Data Structures 1.1.10
- Request Master 1.2.2

## Adding a Test from a New Library

- Export the new library's contents (`Libraries/LibraryName` and `Libraries_config/LibraryName`) and the associated tests (`Libraries_test/LibraryName_test`) into a local asset package.
- Import the local asset package into this project.
- Double-check to make sure that the test room in `Libraries_test/LibraryName_test` has a background layer named `Background`, and that it turns `c_green` on success.
- In **Quick Access > Room Order**, make sure that the new library's test room comes between `rm_unified_test_start` and `rm_unified_test_end`.
- Re-run using F5 to make sure that everything compiles and the result ends in a `c_lime` screen.

