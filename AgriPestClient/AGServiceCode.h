#import <Foundation/Foundation.h>

/**
 * 全局业务错误码
 * 此文件由脚本自动从 Docs/API.md 生成，请勿手动修改
 */
typedef NS_ENUM(NSInteger, AGServiceCode) {
    /** 请求成功 (原始信息: Success) */
    AGServiceCodeSuccess = 200,

    /** 客户端提交的参数不符合要求（例如手机号格式错误） (原始信息: 参数校验失败的具体信息) */
    AGServiceCodeError400 = 400,

    /** 服务器内部发生未捕获的异常 (原始信息: Internal server error) */
    AGServiceCodeInternalServerError = 5000,

    /** 请求参数缺失或不合法 (原始信息: Invalid request parameters) */
    AGServiceCodeInvalidRequestParameters = 4000,

    /** 注册时用户名已被占用 (原始信息: Username already exists) */
    AGServiceCodeUsernameAlreadyExists = 4001,

    /** 注册时手机号已被绑定 (原始信息: Phone number already exists) */
    AGServiceCodePhoneNumberAlreadyExists = 4002,

    /** 权限不足（如非管理员尝试访问后台） (原始信息: Access denied) */
    AGServiceCodeAccessDenied = 4003,

    /** 登录或刷新时未找到该用户 (原始信息: User not found) */
    AGServiceCodeUserNotFound = 4004,

    /** 账号或密码错误 (原始信息: Invalid username or password) */
    AGServiceCodeInvalidUsernameOrPassword = 4005,

    /** Token无效、伪造、版本号过期或已超时 (原始信息: Invalid token or token expired) */
    AGServiceCodeInvalidTokenOrTokenExpired = 4006,

    /** 短信验证码发送失败（第三方服务异常等） (原始信息: Failed to send SMS code) */
    AGServiceCodeFailedToSendSmsCode = 4007,

    /** 短信验证码填写错误或已过期 (原始信息: Invalid or expired SMS code) */
    AGServiceCodeInvalidOrExpiredSmsCode = 4008,

    /** 用户名长度不符合规范 (原始信息: Username must be between 2 and 15 characters) */
    AGServiceCodeUsernameMustBeBetween2And15Characters = 4009,

    /** 修改密码时原密码输入错误 (原始信息: Old password is incorrect) */
    AGServiceCodeOldPasswordIsIncorrect = 4010,

    /** 尝试关注自己 (原始信息: Cannot follow yourself) */
    AGServiceCodeCannotFollowYourself = 4011,

    /** 已经关注过该用户 (原始信息: Already followed this user) */
    AGServiceCodeAlreadyFollowedThisUser = 4012,

    /** 尚未关注该用户，无法执行取关等操作 (原始信息: You have not followed this user) */
    AGServiceCodeYouHaveNotFollowedThisUser = 4013,

    /** 请求查看或操作的帖子不存在 (原始信息: Post not found) */
    AGServiceCodePostNotFound = 4101,

    /** 请求操作的评论不存在 (原始信息: Comment not found) */
    AGServiceCodeCommentNotFound = 4102,

    /** 用户已经对该帖子点过赞，不能重复点赞 (原始信息: Post already liked) */
    AGServiceCodePostAlreadyLiked = 4103,

    /** 用户已经收藏过该帖子，不能重复收藏 (原始信息: Post already favorited) */
    AGServiceCodePostAlreadyFavorited = 4104,

    /** 越权操作（例如尝试删除别人的帖子） (原始信息: No permission to perform this action) */
    AGServiceCodeNoPermissionToPerformThisAction = 4105,

    /** 帖子内容不合法或长度不足 (原始信息: Post content is invalid or too short) */
    AGServiceCodePostContentIsInvalidOrTooShort = 4106,

    /** 请求操作的作物不存在或不属于当前用户 (原始信息: Crop not found) */
    AGServiceCodeCropNotFound = 4201,

    /** 用药打卡计划不存在 (原始信息: Medication plan not found) */
    AGServiceCodeMedicationPlanNotFound = 4202,

    /** 识别记录不存在 (原始信息: Detection record not found) */
    AGServiceCodeDetectionRecordNotFound = 4301,

    /** 大模型识别服务不可用、超时或配置错误 (原始信息: AI service is currently unavailable) */
    AGServiceCodeAiServiceIsCurrentlyUnavailable = 4302,

    /** 文件上传到存储服务失败 (原始信息: File upload failed) */
    AGServiceCodeFileUploadFailed = 4401,

    /** 文件大小超过了服务器限制（通常为 10MB） (原始信息: File size exceeds the maximum limit) */
    AGServiceCodeFileSizeExceedsTheMaximumLimit = 4402,

    /** 文件格式不允许（例如要求图片却上传了文本文件） (原始信息: Invalid file type) */
    AGServiceCodeInvalidFileType = 4403,

    /** 存储服务（MinIO）初始化失败 (原始信息: Failed to initialize storage service) */
    AGServiceCodeFailedToInitializeStorageService = 4404,

    /** 读取文件二进制数据失败 (原始信息: Failed to read file data) */
    AGServiceCodeFailedToReadFileData = 4405,

    /** 消息通知不存在 (原始信息: Message notification not found) */
    AGServiceCodeMessageNotificationNotFound = 4501,

    /** 管理员发布记录不存在 (原始信息: Admin broadcast record not found) */
    AGServiceCodeAdminBroadcastRecordNotFound = 4502,

    /** 推送实时通知失败 (原始信息: Failed to send notification) */
    AGServiceCodeFailedToSendNotification = 4503,

    /** 搜索关键词过短 (原始信息: Search query is too short) */
    AGServiceCodeSearchQueryIsTooShort = 4601,

};
