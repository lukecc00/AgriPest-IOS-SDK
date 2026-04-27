#import "AGMultipartUploadInitResponse.h"

@implementation AGMultipartUploadInitResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uploadId": @"uploadId", @"uploadedParts": @"uploadedParts", @"uploadUrls": @"uploadUrls" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uploadId", @"uploadedParts", @"uploadUrls"];
  return [optionalProperties containsObject:propertyName];
}

@end
