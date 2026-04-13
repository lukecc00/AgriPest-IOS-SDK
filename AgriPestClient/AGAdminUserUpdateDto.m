#import "AGAdminUserUpdateDto.h"

@implementation AGAdminUserUpdateDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"username": @"username", @"phone": @"phone", @"role": @"role", @"fullName": @"fullName", @"avatarUrl": @"avatarUrl", @"bio": @"bio", @"location": @"location", @"followedCrops": @"followedCrops" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"username", @"phone", @"role", @"fullName", @"avatarUrl", @"bio", @"location", @"followedCrops"];
  return [optionalProperties containsObject:propertyName];
}

@end
