# AgriPest iOS SDK (Objective-C)

这是 AgriPest 系统的官方 iOS (Objective-C) 客户端 SDK。

## 当前版本: 1.0.113

## 🚀 快速开始

### 1. 添加依赖 (CocoaPods)
在您的 `Podfile` 中添加：
```ruby
# 推荐使用 HTTPS 格式引入，避免 SSH 权限问题导致拉取失败
pod 'AgriPestClient', :git => 'https://github.com/lukecc00/AgriPest-IOS-SDK.git', :tag => 'v1.0.113'
```

## 🛠 技术原理

本 SDK 基于 **OpenAPI Specification (OAS 3.0)** 标准自动生成，采用经典的 iOS Objective-C 技术栈：
- **核心组件**: 基于 [AFNetworking](https://github.com/AFNetworking/AFNetworking) 的封装。
- **自动化**: 自动为类名添加 `AG` 前缀，并提供 `AgriPestClient.h` 统一入口。

## 📖 使用指南

### 1. 初始化与配置
```objc
#import <AgriPestClient/AgriPestClient.h>

[AGConfiguration setDefaultConfiguration:[[AGConfiguration alloc] initWithURL:@"http://115.191.67.35:8080"]];
[[AGConfiguration defaultConfiguration] setAccessToken:@"your_jwt_token_here"];
```

### 2. 发起请求示例
```objc
AGApiService *apiService = [[AGApiService alloc] init];
[apiService loginWithLoginRequest:loginReq completionHandler:^(AGResultAuthResponse *output, NSError *error) {
    if (output && output.code == 200) {
        NSLog(@"登录成功");
    }
}];
```

## 11. 业务错误码说明 (Business Code)

| 模块分类 | 业务 Code | 错误信息 (Message) | 场景说明 |
| :--- | :--- | :--- | :--- |
| 系统 | 200 | Success | 请求成功 |
| 系统 | 400 | 参数校验失败的具体信息 | 客户端提交的参数不符合要求（例如手机号格式错误） |
| 系统 | 5000 | Internal server error | 服务器内部发生未捕获的异常 |
| 认证/用户 | 4000 | Invalid request parameters | 请求参数缺失或不合法 |
| 认证/用户 | 4001 | Username already exists | 注册时用户名已被占用 |
| 认证/用户 | 4002 | Phone number already exists | 注册时手机号已被绑定 |
| 认证/用户 | 4003 | Access denied | 权限不足（如非管理员尝试访问后台） |
| 认证/用户 | 4004 | User not found | 登录或刷新时未找到该用户 |
| 认证/用户 | 4005 | Invalid username or password | 账号或密码错误 |
| 认证/用户 | 4006 | Invalid token or token expired | Token无效、伪造、版本号过期或已超时 |
| 认证/用户 | 4007 | Failed to send SMS code | 短信验证码发送失败（第三方服务异常等） |
| 认证/用户 | 4008 | Invalid or expired SMS code | 短信验证码填写错误或已过期 |
| 认证/用户 | 4009 | Username must be between 2 and 15 characters | 用户名长度不符合规范 |
| 认证/用户 | 4010 | Old password is incorrect | 修改密码时原密码输入错误 |
| 认证/用户 | 4011 | Cannot follow yourself | 尝试关注自己 |
| 认证/用户 | 4012 | Already followed this user | 已经关注过该用户 |
| 认证/用户 | 4013 | You have not followed this user | 尚未关注该用户，无法执行取关等操作 |
| 社区/帖子 | 4101 | Post not found | 请求查看或操作的帖子不存在 |
| 社区/帖子 | 4102 | Comment not found | 请求操作的评论不存在 |
| 社区/帖子 | 4103 | Post already liked | 用户已经对该帖子点过赞，不能重复点赞 |
| 社区/帖子 | 4104 | Post already favorited | 用户已经收藏过该帖子，不能重复收藏 |
| 社区/帖子 | 4105 | No permission to perform this action | 越权操作（例如尝试删除别人的帖子） |
| 社区/帖子 | 4106 | Post content is invalid or too short | 帖子内容不合法或长度不足 |
| 我的作物 | 4201 | Crop not found | 请求操作的作物不存在或不属于当前用户 |
| 我的作物 | 4202 | Medication plan not found | 用药打卡计划不存在 |
| 识别预警 | 4301 | Detection record not found | 识别记录不存在 |
| 识别预警 | 4302 | AI service is currently unavailable | 大模型识别服务不可用、超时或配置错误 |
| 文件服务 | 4401 | File upload failed | 文件上传到存储服务失败 |
| 文件服务 | 4402 | File size exceeds the maximum limit | 文件大小超过了服务器限制（通常为 10MB） |
| 文件服务 | 4403 | Invalid file type | 文件格式不允许（例如要求图片却上传了文本文件） |
| 文件服务 | 4404 | Failed to initialize storage service | 存储服务（MinIO）初始化失败 |
| 文件服务 | 4405 | Failed to read file data | 读取文件二进制数据失败 |
| 消息通知 | 4501 | Message notification not found | 消息通知不存在 |
| 消息通知 | 4502 | Admin broadcast record not found | 管理员发布记录不存在 |
| 消息通知 | 4503 | Failed to send notification | 推送实时通知失败 |
| 搜索 | 4601 | Search query is too short | 搜索关键词过短 |
