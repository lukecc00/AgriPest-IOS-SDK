#import "AGMessageResponseDto.h"

@implementation AGMessageResponseDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"type": @"type", @"title": @"title", @"content": @"content", @"senderId": @"senderId", @"senderName": @"senderName", @"senderUsername": @"senderUsername", @"senderAvatar": @"senderAvatar", @"postId": @"postId", @"isRead": @"isRead", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"type", @"title", @"content", @"senderId", @"senderName", @"senderUsername", @"senderAvatar", @"postId", @"isRead", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
