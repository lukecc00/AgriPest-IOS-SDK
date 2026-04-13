#import "AGProfile.h"

@implementation AGProfile

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"requestId": @"requestId", @"clientIp": @"clientIp", @"requestBytes": @"requestBytes", @"hasImage": @"hasImage", @"imageUrlLength": @"imageUrlLength", @"imageUrlType": @"imageUrlType", @"extraInfoLength": @"extraInfoLength", @"singleModel": @"singleModel", @"getUserIdMs": @"getUserIdMs", @"normalizeImageUrlMs": @"normalizeImageUrlMs", @"visionMs": @"visionMs", @"agentMs": @"agentMs", @"saveHistoryMs": @"saveHistoryMs", @"totalMs": @"totalMs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"requestId", @"clientIp", @"requestBytes", @"hasImage", @"imageUrlLength", @"imageUrlType", @"extraInfoLength", @"singleModel", @"getUserIdMs", @"normalizeImageUrlMs", @"visionMs", @"agentMs", @"saveHistoryMs", @"totalMs"];
  return [optionalProperties containsObject:propertyName];
}

@end
