The solution involves using the `release` method before assigning a new value or, ideally, using Automatic Reference Counting (ARC) with `strong` properties instead of `retain`.  If not using ARC, always pair `retain` with `release`.

Here's corrected code using ARC:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
// dealloc is not needed when using ARC
@end
```

If not using ARC, the correct way to handle this would be to release the previous string:

```objectivec
@interface MyClass : NSObject
@property (retain) NSString *myString;
@end

@implementation MyClass
- (void)setMyString:(NSString *)newString {
    if (myString != newString) {
        [myString release];
        myString = [newString retain];
    }
}

- (void)dealloc {
    [myString release];
    [super dealloc];
}
@end
```
This ensures that the retain count is properly managed, preventing memory leaks.