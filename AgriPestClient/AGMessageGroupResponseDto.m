#import "AGMessageGroupResponseDto.h"

@implementation AGMessageGroupResponseDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"systemMessages": @"systemMessages", @"systemUnreadCount": @"systemUnreadCount", @"alertMessages": @"alertMessages", @"alertUnreadCount": @"alertUnreadCount", @"commentMessages": @"commentMessages", @"commentUnreadCount": @"commentUnreadCount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"systemMessages", @"systemUnreadCount", @"alertMessages", @"alertUnreadCount", @"commentMessages", @"commentUnreadCount"];
  return [optionalProperties containsObject:propertyName];
}

@end
