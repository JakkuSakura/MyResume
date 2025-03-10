#import "@preview/guided-resume-starter-cgc:2.0.0": *
#import "@preview/fontawesome:0.2.1": *

#show: resume.with(
  author: "邱江坤",
  location: "中国香港",
  contacts: (
    "电话/WhatsApp: 91408309",
    [#link("mailto:qjk2001@gmail.com")[邮箱]],
    [#link("https://github.com/JakkuSakura")[GitHub]],
    [#link("https://www.linkedin.com/in/jiangkun-qiu-181486176/")[LinkedIn]],
    [微信: JakkuSakura]
  ),
  // footer: [#align(center)[#emph[如需推荐人资料，可来函索取]]]
)

= 教育经历
#edu(
  institution: "香港科技大学",
  date: "2020-2025",
  location: "香港",
  degrees: (
    ("本科", "计算机工程"),
  ),
)

#edu(
  institution: "大阪大学",
  date: "2023",
  location: "大阪，日本",
  degrees: (
    ("交换生", "人文课程"),
  ),
)

= 技能
#skills((
  ("Rust", (
    [在高频交易和web3领域4年Rust经验],
  )),
  ("高频交易", (
    [独立"全栈"高频交易系统构建者，专注做市和套利],
  )),
  ("算法", (
    [中学时期算法和数据结构培训与竞赛经验],
  )),
  ("其他", (
    [广泛的技术栈，掌握从后端到基础前端、从机器学习到智能合约的主流语言],
  ))
))

= 工作经历
#exp(
  role: "系统工程师",
  project: "Vincella Limited",
  date: "2023年8月 - 2024年12月",
  summary: "香港一家交易创业公司，创始人来自Citadel和高盛",
  details: [
    - 设计整体交易架构，包括数据处理、研究、订单管理和回测
    - 使用现代C++从零开发低延迟交易基础设施
    - 探索现代研究设施，结合大数据和机器学习技术
    - 部署DevOps最佳实践，建立离线CI/CD工作流
  ]
)

#exp(
  role: "市场接入实习生",
  project: "Qube Research and Technologies",
  date: "2023年2月 - 2024年7月",
  summary: "一家从瑞士信贷分离出来的全球量化交易公司",
  details: [
    - 用C++实现和优化高性能链接，用于处理市场数据和执行交易订单
    - 开发了全面框架和高级工具，高效管理和转换TB级历史市场数据
    - 创建图形分析工具评估和改进交易链接性能，为决策和优化提供有价值见解
    - 设计开发各交易所模拟器，实现软硬件订单管理系统在模拟实时环境中的准确测试和评估
    - 优化机器学习框架，预测速度提高3倍
  ],
)

#exp(
  role: "顾问",
  project: "加密货币高频交易",
  date: "2020年7月 - 2023年2月",
  details: [
    - 用Rust从零设计开发模块化交易系统，专注极低延迟，tick2order延迟10微秒
    - 实现盈利的做市和套利算法，支持5个研究员和交易员，年化收益率50%
    - 构建高效连接多个中心化和去中心化交易所的链接
    - 开发基于DPDK的Rust TCP栈，绕过Linux内核网络栈的限制
    - 发明各种工具如JSON解析器和HTTP请求格式化器，性能大幅超越行业标准库
    - 设计开发订单管理系统和会计系统，确保一致性和准确性
  ],
)

#pagebreak()

#exp(
  role: "服务架构实习生",
  project: "北京字节跳动",
  date: "2022年4月 - 2022年9月",
  summary: "TikTok背后的公司",
  details: [
    - 独立提出并实现git-fuse，用于频繁代码生成的大型代码库，将总处理时间缩短至1/20，磁盘使用减少至1/100，应用于Overpass。在公司内分享讲座，吸引100多名听众
    - 为ProtoBuf和Thrift实现通用且可定制的代码检查工具，促进自动代码审查
    - 维护改进DevFlow，一个集成流畅在线编辑、API代码审查、代码检查、兼容性检查、代码生成的平台
    - 维护改进Overpass，一个广泛应用于收集RPC定义文件并为其他Go项目生成RPC客户端的平台
  ],
)

#exp(
  role: "顾问",
  project: "多家公司",
  date: "",
  details: [
    - 从零构建一个MVP交易所，实现内存中限价订单簿、数据库API、用户管理、统计仪表盘，特别关注泰国的合规要求
    - 构建ColdVault，将硬件安全模块引入以太坊和Solana
    - 构建$"MC"^2$，一个在去中心化交易所运行的复制交易平台
    - 构建RedAlert，为加密世界价格飙升提供快速通知
    - 在Tezos、以太坊和Solana上构建各种智能合约
  ],
)

#exp(
  role: "后端开发实习生",
  project: "麦穗人工智能",
  date: "2020年12月 - 2021年6月",
  summary: "麦穗AI是上海一家公司，为客户提供AI招聘平台。",
  details: [
    - 用Scala Akka和Redis实现修改的滑动日志算法，为非常慢但关键的请求实现分布式限流器
    - 构建慢刷新服务，将PostgreSQL变更日志通道化到Kafka
  ]
)

= 项目
#exp(
  role: "毕业设计项目",
  project: "Sakura Trading",
  date: "2022年至今",
  summary: "用Rust构建HFT系统，包含所有方面的知识",
  details: [
    - 低延迟加密货币交易热路径，优化订单簿处理、网络栈和Rest/JSON编解码等
    - 用于研究和回测的多功能数据管道，特别是parquet集成
    - 精心建模套利工具
    - 使用Ray、Polars和ClickHouse构建分布式研究和回测基础设施
    - 用SolidJS和gpui构建前端
    - 使用Prometheus和Grafana构建监控基础设施
  ]
)

#exp(
  role: "个人项目",
  project: "高级分层语言",
  date: "2022年至今",
  summary: "增强Rust类型系统，提高构建时的表达能力",
  details: [
    - 实现高级优化如单态化和分层
    - 实现跨语言兼容性，用于代码翻译和优化
    - 提供优化和解释模式的灵活性
    - 连接高层抽象与低层代码生成
  ]
)

= 奖项和认证
- 中国计算机学会认证学生会员 #h(1fr) 2019年7月至今
- 全国信息学奥林匹克省级赛区高中组一等奖 #h(1fr) 2017年11月，2018年11月
- RoboCom2018全球锦标赛（机器人比赛）金奖 #h(1fr) 2018年7月
- 国家计算机等级考试四级，网络工程师 #h(1fr) 2016年11月
- 全国信息学奥林匹克省级赛区初中组一等奖（第6名） #h(1fr) 2016年10月
- 第19届"和"教育杯计算机竞赛全国总决赛一等奖（第1名） #h(1fr) 2016年7月
