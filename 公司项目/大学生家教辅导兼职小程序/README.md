# ZhiXin-JiaJiao

## 项目概述

教育行业O2O平台解决方案，集成优质家教资源，提供课程预约与管理系统。支持三端场景：

- 👨👩👧 家长端：教师查询/课程预约/即时通讯
- 👨🏫 教师端：课表管理/资质认证/收入统计
- 📊 管理端：订单审核/数据分析/资源调配

## 技术栈

- 基础库版本：3.6.3
- 前端框架：uView UI 2.0.31
- 开发范式：WXML/WXSS + TypeScript

## 项目结构

```bash
├── miniprogram        # 核心代码（禁止修改目录结构）
│   ├── pages         # 页面路由配置（自动生成）
│   ├── components    # 公共组件（新增组件需加类型声明）
│   └── utils         # 工具库（已封装通用请求方法）
├── typings           # TS类型声明（修改后需重新编译）
└── project.config.json  # 项目基础配置（勿改动）
```

## 核心功能

| 模块     | 关键技术点                | 注意事项                       |
| ------ | -------------------- | -------------------------- |
| 教师信息展示 | 卡片式布局 + 二维码识别[^7]    | 需申请相机权限                    |
| 课程预约系统 | 日历组件 + WebSocket即时通知 | 使用`wx.onSocketMessage`监听消息 |
| 文件上传功能 | 集成OSS服务 + 分片上传[^8]   | 单个文件≤100MB                 |

## 新手快速上手指南

Github Desktop详情见黄色仓库项目手册

### 环境准备

安装[微信开发者工具](https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html)

#### 克隆项目仓库

```powershell
git clone https://github.com/xiaolinbenben/ZhiXin-JiaJiao.git
```

#### 修改代码

```powershell
# 创建功能分支
git checkout -b feature/XXX的XX功能分支

# 提交规范
git commit -m "feat: 新增用户认证模块 
- 集成微信手机号获取API
- 添加表单验证逻辑"

# 推送分支
git push origin feature/XXX的XX功能分支
```

#### 合并到主分支

```powershell
git checkout main
git merge --no-ff feature/XXX的XX功能分支  # 保留分支历史
```

### 代码规范

```javascript
// ✅ 正确写法（使用readFile替代废弃API）
const fs = wx.getFileSystemManager()
fs.readFile({
  filePath: `${wx.env.USER_DATA_PATH}/config.json`,
  success: (res) => console.log(res.data)
})

// ❌ 已废弃写法（基础库2.20.1+不可用）
fs.readSync()  // 会导致iOS性能问题
```

### 兼容性要求

- 微信客户端版本 ≥ 7.0.9
- 基础库版本 ≥ 2.16.1
