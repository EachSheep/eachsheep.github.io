---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from:
  - /about/
  - /about.html
---
{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

# About Me

I am **SHEN Haiyang**, a **Ph.D. candidate** at the [School of Computer Science](https://cs.pku.edu.cn/), [Peking University](https://www.pku.edu.cn/), advised by [Assistant Professor Yun Ma](https://scholar.google.com/citations?hl=en&user=1hnJ3TgAAAAJ).

<p class="job-notice">I am currently actively seeking job opportunities related to LLM agents, software engineering, and real-world automation.</p>

I work on **LLM agents**, **software engineering**, and **data synthesis for real-world automation**. My current research takes a data-centric view of agent development: the bottleneck is not only model capability, but also how we **discover**, **define**, and **scale** the right tasks from real software systems, user trajectories, and executable environments. Since late 2024, I have focused on **agent data synthesis**, including **graph/search data synthesis** for deep research and agentic retrieval, and **coding agent benchmark/data synthesis** through Monthly-SWEBench, DeepTerminalBench, and EvoCodeBench.

My long-term vision is to build a fully automated **self-improving loop** for agents: systems that **discover** real problems from software systems and user trajectories, **define** them as measurable tasks, **synthesize** benchmark and training data, run experiments, and use feedback to improve the next generation of agents. Inspired by **autoresearch**, I hope to move this loop toward **fully automated agent self-evolution and continual evolution**.

My research group is affiliated with the [Data Space Technology and Systems Research Center](https://cs.pku.edu.cn/info/1025/2713.htm), led by [Academician Hong Mei](https://scholar.google.com/citations?user=b-ZYIwoAAAAJ&hl=en) and [Professor Gang Huang](https://scholar.google.com/citations?hl=en&user=5FxmC14AAAAJ), with faculty members including [Xuanzhe Liu](https://scholar.google.com/citations?hl=en&user=eOhSVi8AAAAJ), [Xin Jin](https://scholar.google.com/citations?hl=en&user=NhsdGBUAAAAJ), and [Yun Ma](https://scholar.google.com/citations?hl=en&user=1hnJ3TgAAAAJ). The center has long-standing strengths in **machine learning systems**, **software engineering**, **systems**, edge/mobile computing, and AI infrastructure.

# Research and Engineering Experience {#experience}

- **2025.12 -- 2026.07** Intern, [UniPat AI](https://unipat.ai/), a leading agent-data company focused on accelerating AI toward real-world automation. Deeply involved in the development and research of high-quality code benchmarks for [Terminal-X](https://unipat.ai/blog/TerminalX), including [Deep-TerminalBench](https://unipat.ai/blog/TerminalX), [EvoCode-Bench](https://unipat.ai/benchmarks/EvoCode-Bench), [Roadmap-Bench](https://unipat.ai/benchmarks/RoadmapBench), and [Monthly-SWEBench](https://unipat.ai/benchmarks/MonthlySWEBench). This work goes beyond human-in-the-loop benchmark construction, extending to fully automated, large-scale high-quality data construction pipelines that have already created substantial economic value.
- **2025.06 -- 2025.11** Intern, [Tongyi DeepResearch Group](https://tongyi-agent.github.io/about/), [Tongyi Lab](https://tongyi.aliyun.com/), Alibaba, one of China's top LLM labs. Deeply investigated graph data synthesis for improving agentic retrieval performance in DeepResearch.
- **2022 -- now** PKU Outstanding Research Award and Ubiquant Scholarship, [Peking University](https://www.pku.edu.cn/).
- **2022.09 -- now** Ph.D. candidate in Computer Science and Technology, [School of Computer Science](http://cs.pku.edu.cn/) in [Peking University](https://www.pku.edu.cn/).
- **2024.10 -- 2025.03** Intern of [Miracleplus](https://www.miracleplus.com/) & [Shanghai AI Lab](https://www.shlab.org.cn/). Explored complex graph data synthesis for agentic retrieval, focusing on generating structured, multi-hop graph data to improve agents' ability to retrieve, connect, and reason over heterogeneous information.
- **2022.08 -- 2022.10** Intern of [Alibaba Innovative Research](https://damo.alibaba.com/collaborations) in Technical & Quality of [Fliggy](https://www.fliggy.com), [Alibaba](https://www.alibaba.com). Explored AI-based prediction of abnormal software usage patterns from page-access and interaction logs. Resigned early to work remotely due to the pandemic.
- **2019 -- 2021** National Scholarship, First Class Scholarship, and Wu Yajun Scholarship of [Northwestern Polytechnical University](http://www.nwpu.edu.cn).
- **2018.09 -- 2022.07** B.Sc. in Computer Science and Technology, [School of Computer Science](http://jsj.nwpu.edu.cn/) in [Northwestern Polytechnical University](http://www.nwpu.edu.cn/).

# Publications

<sup>*</sup> Co-first author or project leader. <sup>&#9993;</sup> Corresponding author.

## Software-System Agents, Benchmarks, and Data Synthesis

1. **Haiyang Shen**<sup>*</sup>, Xuanzhong Chen<sup>*</sup>, Wendong Xu<sup>*</sup>, Yun Ma<sup>&#9993;</sup>, Liang Chen<sup>&#9993;</sup>, Kuan Li<sup>&#9993;</sup>. EvoCodeBench: Evaluating Coding Agents in Multi-Turn Iterative Interactions. **2026**.
   - [arXiv](https://arxiv.org/abs/2605.24110)
   - [Benchmark](https://unipat.ai/benchmarks/EvoCode-Bench)
   - [Blog](https://unipat.ai/blog/TerminalX)
   - [GitHub](https://github.com/UniPat-AI/EvoCodeBench)
   - [Dataset](https://huggingface.co/datasets/anonymousee8/evocodebench)

2. UniPat AI Coding Team. DeepTerminalBench: Single-Shot Deep Engineering Tasks in Terminal-X. **2026**. **Benchmark**.
   - [Blog](https://unipat.ai/blog/TerminalX)
   - [GitHub](https://github.com/UniPat-AI/Terminal-X)
   - [Dataset](https://github.com/UniPat-AI/Terminal-X/tree/main/data/DeepTerminalBench)

3. Xinbo Xu, Ruihan Yang, **Haiyang Shen**, Wendong Xu, Bofei Gao, Ruoyu Wu, Kean Shi, Weichu Xie, Xuanzhong Chen, Ming Wu, Jason Zeng, Michael Heinrich, Liang Chen, Kuan Li, Baobao Chang. RoadmapBench: Evaluating Long-Horizon Agentic Software Development Across Version Upgrades. **2026**.
   - [arXiv](https://arxiv.org/abs/2605.15846)
   - [Benchmark](https://unipat.ai/benchmarks/RoadmapBench)
   - [Blog](https://unipat.ai/blog/TerminalX)
   - [GitHub](https://github.com/UniPat-AI/RoadmapBench)
   - [Dataset](https://huggingface.co/datasets/UnipatAI/RoadmapBench)

4. **Haiyang Shen**<sup>*</sup>, Xinbo Xu<sup>*</sup>, Xuanzhong Chen, Wendong Xu<sup>&#9993;</sup>, Elvis Zhang, Kaiyuan Chen, Xiaobo Hu, Rui Wang, Yang Liu, Yixin Ren, Yuan Gong, Liang Chen, Kuan Li<sup>&#9993;</sup>. Monthly-SWEBench: A Living, Rigorously Verified Benchmark for Real-World Software Engineering. **2026**. **Live Benchmark**.
   - [Live Benchmark](https://unipat.ai/benchmarks/MonthlySWEBench)
   - [Dataset](https://huggingface.co/collections/UnipatAI/monthly-swebench)

5. **Haiyang Shen**, Yue Li, Desong Meng, Dongqi Cai, Sheng Qi, Li Zhang, Mengwei Xu, **Yun Ma**<sup>&#9993;</sup>. ShortcutsBench: A Large-Scale Real-world Benchmark for API-based Agents. The Thirteenth International Conference on Learning Representations (ICLR). **2025**. **Top Conference on Machine Learning**.
   - [Paper](https://openreview.net/forum?id=kKILfPkhSz)
   - [arXiv](https://arxiv.org/abs/2407.00132)
   - [Project/GitHub](https://github.com/eachsheep/shortcutsbench)

6. **Haiyang Shen**, Yue Li, Zhiyang Chen, **Yun Ma**<sup>&#9993;</sup>. EasIPA: Enhancing LLM's Ability to Select APIs for IPA. International Conference on Service Science. **2025**.
   - [Paper](https://doi.org/10.1007/978-981-95-1581-3_3)

7. **Haiyang Shen**, **Yun Ma**<sup>&#9993;</sup>, Yue Li, Xiaoling Wang, Deyu Tian, Tong Jia, Tengfei He, Shenghua Luo. ADPal: Automatic Detection of Troubled Users in Online Service Systems via Page Access Logs. 2023 IEEE International Conference on Web Services (ICWS). **2023**. **Top Conference on Service Computing**.
   - [DOI](https://doi.org/10.1109/ICWS60048.2023.00082)
   - [GitHub](https://github.com/eachsheep/abnormaldetection)

8. Wenchun Jing, **Haiyang Shen**, Haoran Wang, Qi Liu, Ningyuan Li, Chaoran Luo, Ning Zhang, Yun Ma. MCP-Focus: Leveraging Function-Oriented Document Enhancement for MCP Server Retrieval. The ACM SIGIR Conference on Research and Development in Information Retrieval (SIGIR). **2026**.
   - [GitHub](https://github.com/JingWC/MCP-Focus)

9. Zhuofan Shi, Hubao A, Yufei Shao, Dongliang Huang, Hongxu An, Chunxiao Xin, **Haiyang Shen**, Zhenyu Wang, Yunshan Na, Gang Huang, Xiang Jing. MDAgent2: Large Language Model for Code Generation and Knowledge Q&A in Molecular Dynamics. **2026**.
   - [arXiv](https://arxiv.org/abs/2601.02075)
   - [GitHub](https://github.com/FredericVAN/PKU_MDAgent2)

10. Guoqing Wang, Zeyu Sun, Yizhou Chen, Yifan Zhao, **Haiyang Shen**, Qingyuan Liang, Dan Hao<sup>&#9993;</sup>. Beyond the Sum of Parts: Leveraging Entanglement for Bug Inducing Commit Localization. IEEE Transactions on Software Engineering. **2025**. **Top Journal in Software Engineering**.
   - [DOI](https://doi.org/10.1109/TSE.2025.3628362)

## Graph/Search Data Synthesis for Deep Research

1. **Haiyang Shen**<sup>*</sup>, Taian Guo<sup>*</sup>, Xuanzhong Chen<sup>*</sup>, Mugeng Liu, Weichen Bi, Wenchun Jing, Sixiong Xie, Zhuofan Shi, Yudong Han, Chongyang Pan, Siqi Zhong, Jinsheng Huang, Ming Zhang<sup>&#9993;</sup>, **Yun Ma**<sup>&#9993;</sup>. MindLoom: Composing Thought Modes for Frontier-Level Reasoning Data Synthesis. **2026**.
   - [arXiv](https://arxiv.org/abs/2605.21630)
   - [GitHub](https://github.com/EachSheep/MindLoom)

2. Sixiong Xie<sup>*</sup>, Zhuofan Shi<sup>*</sup>, **Haiyang Shen**<sup>*&#9993;</sup>, Jiuzheng Wang, Siqi Zhong, Chongyang Pan, Mugeng Liu, Peilun Jia, Baoqing Sun, Xiang Jing, **Yun Ma**<sup>&#9993;</sup>. DeepWeb-Bench: A Deep Research Benchmark Demanding Massive Cross-Source Evidence and Long-Horizon Derivation. **2026**.
   - [arXiv](https://arxiv.org/abs/2605.21482)
   - [Project](https://sixiongxie1001-dot.github.io/deep-research-benchmark2.0/index.html)

3. **Haiyang Shen**<sup>*</sup>, Jiuzheng Wang<sup>*</sup>, Taian Guo, Mugeng Liu, Wenchun Jing, Chongyang Pan, Siqi Zhong, Zhiyang Chen, Weichen Bi, Yudong Han, Xiaoying Bai, **Yun Ma**<sup>&#9993;</sup>. Teaching AI Through Benchmark Construction: QuestBench as a Course-Based Practice for Accountable Knowledge Work. **2026**.
   - [arXiv](https://arxiv.org/abs/2605.21413)
   - [Dataset](https://huggingface.co/datasets/PKUAIWeb/QuestBench)

4. Ningyuan Li<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Mugeng Liu, Yudong Han, Zhuofan Shi, Sixiong Xie, **Yun Ma**<sup>&#9993;</sup>. SGR-Bench: Benchmarking Search Agents on State-Gated Retrieval. **2026**.
   - [arXiv](https://arxiv.org/abs/2605.22219)
   - [Dataset](https://huggingface.co/datasets/PKUAIWeb/SGR-BENCH)

5. Zhengwei Tao<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Baixuan Li<sup>*</sup>, Wenbiao Yin, Jialong Wu, Kuan Li, Zhongwang Zhang, Huifeng Yin, Rui Ye, Yong Jiang, Pengjun Xie, Fei Huang, Jingren Zhou, Wentao Zhang<sup>&#9993;</sup>, **Yun Ma**<sup>&#9993;</sup>, Zhiqiang Gao<sup>&#9993;</sup>. Empowering Efficiency and Efficacy in WebAgent via Enabling Info-Rich Seeking. The Fourteenth International Conference on Learning Representations (ICLR). **2026**. **Top Conference on Machine Learning**.
   - [Paper](https://openreview.net/forum?id=MVFGY1nS6b)
   - [arXiv](https://arxiv.org/abs/2510.24697)
   - [GitHub](https://github.com/Alibaba-NLP/DeepResearch)
   - [Dataset](https://huggingface.co/datasets/Alibaba-NLP/WebComposer)

6. **Haiyang Shen**<sup>*</sup>, Hang Yan<sup>*</sup>, Zhongshi Xing, Mugeng Liu, Yue Li, Zhiyang Chen, Yuxiang Wang, Jiuzheng Wang, **Yun Ma**<sup>&#9993;</sup>. DRAGON: Domain-specific Robust Automatic Data Generation for RAG Optimization. Findings of the Association for Computational Linguistics: EACL 2026. **2026**. **Top Conference on NLP**.
   - [Paper](https://aclanthology.org/2026.findings-eacl.56/)
   - [arXiv](http://arxiv.org/abs/2505.10989)
   - [GitHub](https://github.com/EachSheep/RAGSynth)

7. Tongyi DeepResearch Team, Baixuan Li, Bo Zhang, Dingchu Zhang, ..., **Haiyang Shen**, Xinyu Geng, Yuning Wu, Zijian Li, Yong Jiang<sup>&#9993;</sup>. Tongyi DeepResearch Technical Report. **2025**.
   - [arXiv](https://arxiv.org/abs/2510.24701)
   - [GitHub](https://github.com/Alibaba-NLP/DeepResearch)

8. Zhengwei Tao<sup>*</sup>, Jialong Wu<sup>*</sup>, Wenbiao Yin, Pu Wu, Junkai Zhang, Baixuan Li, **Haiyang Shen**, Kuan Li, Liwen Zhang, Xinyu Wang, Yong Jiang<sup>&#9993;</sup>, Pengjun Xie, Fei Huang, Jingren Zhou, Wentao Zhang<sup>&#9993;</sup>. WebShaper: Agentically Data Synthesizing via Information-Seeking Formalization. The Fourteenth International Conference on Learning Representations (ICLR). **2026**. **Top Conference on Machine Learning**.
   - [Paper](https://openreview.net/forum?id=hld4TzJsnD)
   - [arXiv](https://arxiv.org/abs/2507.15061)
   - [GitHub](https://github.com/Alibaba-NLP/WebAgent)
   - [Dataset](https://huggingface.co/datasets/Alibaba-NLP/WebShaper)

9. Zhuofan Shi, Peilun Jia, Baoqing Sun, **Haiyang Shen**, Sixiong Xie, Yun Ma, Xiang Jing. ViDR: Grounding Multimodal Deep Research Reports in Source Visual Evidence. **2026**.
   - [arXiv](https://arxiv.org/abs/2605.13034)
   - [GitHub](https://github.com/PKU-JX-LAB/PKU_MMDR)

10. Baixuan Li<sup>*</sup>, Dingchu Zhang<sup>*</sup>, Jialong Wu<sup>*</sup>, Wenbiao Yin<sup>&#9993;</sup>, Zhengwei Tao, Yida Zhao, Liwen Zhang, **Haiyang Shen**, Runnan Fang, Pengjun Xie, Jingren Zhou, Yong Jiang<sup>&#9993;</sup>. ParallelMuse: Agentic Parallel Thinking for Deep Information Seeking. **2025**.
    - [arXiv](https://arxiv.org/abs/2510.24698)
    - [GitHub](https://github.com/Alibaba-NLP/DeepResearch)

11. Qi Yang, Weichen Bi, **Haiyang Shen**, Yaoqi Guo, **Yun Ma**<sup>&#9993;</sup>. PixelWeb: The First Web GUI Dataset with Pixel-Wise Labels. **2025**.
    - [arXiv](https://arxiv.org/abs/2504.16419)
    - [Dataset](https://huggingface.co/datasets/cyberalchemist/PixelWeb)

## Financial Agents

1. Taian Guo<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Junyu Luo, Zhongshi Xing, Hanchun Lian, Jinsheng Huang, Binqi Chen, Luchen Liu, **Yun Ma**<sup>&#9993;</sup>, Ming Zhang<sup>&#9993;</sup>. MEME: Modeling the Evolutionary Modes of Financial Markets. **2026**.
   - [arXiv](https://arxiv.org/abs/2602.11918)
   - [GitHub](https://github.com/gta0804/MEME)

2. Taian Guo<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Junyu Luo, Binqi Chen, Hongjun Ding, Jinsheng Huang, Luchen Liu, **Yun Ma**<sup>&#9993;</sup>, Ming Zhang<sup>&#9993;</sup>. AlphaPROBE: Alpha Mining via Principled Retrieval and On-graph Biased Evolution. **2026**.
   - [arXiv](https://arxiv.org/abs/2602.11917)
   - [GitHub](https://github.com/gta0804/AlphaPROBE)

3. Taian Guo<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Jinsheng Huang, Zhengyang Mao, Junyu Luo, Binqi Chen, Zhuoru Chen, Luchen Liu, Bingyu Xia, **Yun Ma**<sup>&#9993;</sup>, Ming Zhang<sup>&#9993;</sup>. MASS: Multi-Agent Simulation Scaling for Portfolio Construction. **2025**.
   - [arXiv](https://arxiv.org/abs/2505.10278)
   - [GitHub](https://github.com/gta0804/MASS)

## LLM Inference on Edge Devices

1. Siqi Zhong, Mugeng Liu, **Haiyang Shen**, Chongyang Pan, **Yun Ma**<sup>&#9993;</sup>. LaTune: Lightweight and Adaptive Configuration Tuning for LLM Inference on Edge Devices. Proceedings of the ACM Web Conference 2026. **2026**. **Top Conference on Web**.
   - [Paper](https://doi.org/10.1145/3774904.3792382)
   - [GitHub](https://github.com/orgs/pkuaiweb/repositories)

2. Zhiyang Chen, Daliang Xu, **Haiyang Shen**, Chiheng Lou, Mengwei Xu, Shangguang Wang, Xin Jin, **Yun Ma**<sup>&#9993;</sup>. Accelerating Mobile Language Model via Speculative Decoding and NPU-Coordinated Execution. **2025**.
   - [arXiv](https://arxiv.org/abs/2510.15312)

3. Zhiyang Chen, **Yun Ma**<sup>&#9993;</sup>, **Haiyang Shen**, Mugeng Liu. WeInfer: Unleashing the Power of WebGPU on LLM Inference in Web Browsers. Proceedings of the ACM on Web Conference 2025. **2025**. **Top Conference on Web**.
   - [Paper](https://doi.org/10.1145/3696410.3714553)
   - [GitHub](https://github.com/csAugust/WeInfer)

4. Mugeng Liu, **Haiyang Shen**, Yixuan Zhang, Hong Mei, **Yun Ma**<sup>&#9993;</sup>. WebAssembly for Container Runtime: Are We There Yet? ACM Transactions on Software Engineering and Methodology. **2025**. **Top Journal in Software Engineering**.
   - [DOI](https://doi.org/10.1145/3712197)
   - [GitHub](https://github.com/morgen52/measurement_of_wasm_container)

5. Deyu Tian, **Haiyang Shen**, **Yun Ma**<sup>&#9993;</sup>. Parallelizing DNN Inference in Mobile Web Browsers on Heterogeneous Hardware. Proceedings of the 20th Annual International Conference on Mobile Systems, Applications and Services (MobiSys). **2022**. **Top Conference on Mobile Computing**.
   - [DOI](https://doi.org/10.1145/3498361.3538763)

## Others

1. Liang Chen<sup>*</sup><sup>&#9993;</sup>, Weichu Xie<sup>*</sup>, Yiyan Liang<sup>*</sup>, Hongfeng He<sup>*</sup>, Hans Zhao<sup>*</sup>, ..., **Haiyang Shen**, Yixin Ren, Yang Liu, Yuan Gong, Kuan Li<sup>&#9993;</sup>. BabyVision: Visual Reasoning Beyond Language. The Forty-third International Conference on Machine Learning (ICML). **2026**. **Top Conference on Machine Learning**.
   - [arXiv](https://arxiv.org/abs/2601.06521)
   - [Project](https://unipat.ai/blog/BabyVision)
   - [GitHub](https://github.com/UniPat-AI/BabyVision)
   - [Dataset](https://huggingface.co/datasets/UnipatAI/BabyVision)

2. Zijian Shao<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Mugeng Liu, Guangyu Fu, Yaoqi Guo, Yuxiang Wang, **Yun Ma**<sup>&#9993;</sup>. Rethinking Explainable Disease Prediction: Synergizing Accuracy and Reliability via Reflective Cognitive Architecture. **2025**.
   - [arXiv](https://arxiv.org/abs/2509.21266)
   - [GitHub](https://github.com/ssssszj/RCA)

3. **Haiyang Shen**, **Yun Ma**<sup>&#9993;</sup>. Characterizing the Developer Groups for Metaverse Services in Roblox. 2024 IEEE International Conference on Software Services Engineering (SSE). **2024**.
   - [DOI](https://doi.org/10.1109/SSE62657.2024.00039)

# Correspondence

- Email: [hyshen@stu.pku.edu.cn](mailto:hyshen@stu.pku.edu.cn)
- GitHub: [https://github.com/eachsheep](https://github.com/eachsheep)
- Google Scholar: [https://scholar.google.com/citations?user=BI-Mb_EAAAAJ](https://scholar.google.com/citations?user=BI-Mb_EAAAAJ)
- Homepage: [https://eachsheep.space](https://eachsheep.space)
