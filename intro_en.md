# Trading
I'm Jack, a 2nd year student from HKUST.
I started programming very early, about 10 years ago back in primary school. I started with Java, then got to learn C and C++. I attended informatics competition in high school, thus gained some knowledge about data structures and algorithms.

Since 2020, I get paid to develop a HFT system for cryptocurrencies as the main developer. The goal was to seek extreme runtime performance, while balancing code quality and development pace. The language chosen is Rust, because it's expressive, fast, and safe.

To maximize runtime performance, we had many original ideas beyond classic optimizations, such as cache line, NUMA, lockless structures, co-locations. We carefully schedule each component and integrate them in the best way. We even have our own async runtime, our TCP stack based on DPDK, and our http and json library. They are faster than all open-source projects available. We also have many approaches to ensure connectivity in case of network disruption.

To maintain high code quality, normal C/C++ style can't be used. I have studies on code generation, procedural macro, and high-level compiler optimization. So I can code in a modular manner and avoid runtime cost of virtual functions. The project is even refactored several times, to improve overall runtime performance and code quality.

To facilitate development pace, I explore DevOps, automatic testing, github CI, docker, kubernetes and tools like Ansible. I also developed a monitor system based on grafana and prometheus. In 2022, I had an internship in ByteDance, focusing on server architecture and API management, and applied the skills in other projects. I make full use of API definition to guide optimization and code generation.

The HFT system can handle thousands of requests per second, managing hundreds of accounts of multiple exchanges on a single machine. For the trading strategies, they are confidential but have positive PnLs over the years.

I also have some side projects, such as digital asset custody, HSM integration, smart contract, and even rewriting a bloated exchange.

Beside the project, I love to design programming languages and high level optimization. Though no paper is published yet, I'm working on a language for extreme high performance, featured with specialization and transpilation, to be used in HFT production.
