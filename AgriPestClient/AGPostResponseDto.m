#import "AGPostResponseDto.h"

@implementation AGPostResponseDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"title": @"title", @"content": @"content", @"images": @"images", @"tags": @"tags", @"authorId": @"authorId", @"authorName": @"authorName", @"authorUsername": @"authorUsername", @"authorAvatar": @"authorAvatar", @"likeCount": @"likeCount", @"favoriteCount": @"favoriteCount", @"commentCount": @"commentCount", @"isLiked": @"isLiked", @"isFavorited": @"isFavorited", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"title", @"content", @"images", @"tags", @"authorId", @"authorName", @"authorUsername", @"authorAvatar", @"likeCount", @"favoriteCount", @"commentCount", @"isLiked", @"isFavorited", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
