#import "AGAuthResponse.h"

@implementation AGAuthResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"token": @"token", @"refreshToken": @"refreshToken", @"expiresIn": @"expiresIn", @"userId": @"userId", @"username": @"username", @"fullName": @"fullName", @"generatedPassword": @"generatedPassword" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"token", @"refreshToken", @"expiresIn", @"userId", @"username", @"fullName", @"generatedPassword"];
  return [optionalProperties containsObject:propertyName];
}

@end
