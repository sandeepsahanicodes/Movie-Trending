# Movie-Trending
A simple app for learning MVVM architecture in iOS Swift.


## Error & bugs encountered while learning

| **Error/bug**                                         | **Reason**                                                                                                                                               |
|-------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| dataCorrupted(Swift.DecodingError.Context(codingPath: [CodingKeys(stringValue: "results", intValue: nil), _CodingKey(stringValue: "Index 19", intValue: 19), CodingKeys(stringValue: "original_language", intValue: nil)], debugDescription: "Cannot initialize OriginalLanguage from invalid String value hi", underlyingError: nil))          | The JSON data contains an `original_language` field with a value `"hi"`, but the corresponding enum in your model doesn’t include that value.             


