# Movie-Trending
A simple app for learning MVVM architecture in iOS Swift.


## Error & bugs encountered while learning

| **Error/bug**                                         | **Reason**                                                                                                                                               |
|-------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| dataCorrupted(Swift.DecodingError.Context(codingPath: [CodingKeys(stringValue: "results", intValue: nil), _CodingKey(stringValue: "Index 19", intValue: 19), CodingKeys(stringValue: "original_language", intValue: nil)], debugDescription: "Cannot initialize OriginalLanguage from invalid String value hi", underlyingError: nil))          | The JSON data contains an `original_language` field with a value `"hi"`, but the corresponding enum in your model doesn’t include that value.  
| Activity Indicator View was not animating despite of using `self.activatingIndicator.startAnimating()` not hiding despite of using `self.activatingIndicator.stopAnimating()` | The Behaviour `Animating` and `Hides When Stopped` was not checked. In other words by default `self.activatingIndicator.isAnimating = false` `self.activatingIndicator.hideWhenStopped = false`.         


