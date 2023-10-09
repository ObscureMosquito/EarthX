#import <Foundation/Foundation.h>

%hook NSURLConnection

- (instancetype)initWithRequest:(NSURLRequest *)request delegate:(id)delegate {
    NSMutableURLRequest *mutableRequest = [request mutableCopy];
    [mutableRequest setValue:@"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Safari/605.1.15" forHTTPHeaderField:@"User-Agent"];
    return %orig(mutableRequest, delegate);
}

%end
