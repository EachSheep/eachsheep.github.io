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

I am **SHEN Haiyang**, a **Ph.D. candidate** at the [School of Computer Science](https://cs.pku.edu.cn/), [Peking University](https://www.pku.edu.cn/). I am advised by [Assistant Professor Yun Ma](https://scholar.google.com/citations?hl=en&user=1hnJ3TgAAAAJ). I have accumulated **340+ citations** with an **h-index of 7** on Google Scholar.

My research trajectory started from **software systems**, then moved toward the intersection of **software and AI**, and has gradually evolved into my current focus on **LLM-based agents**. My long-term vision is to better integrate AI with existing software systems, enabling AI to use tools, interact with applications, and improve real-world software workflows more reliably.

My research centers on **LLM-based agents**. Specifically, I am interested in:

- **Search & Web Agents**: building intelligent agents for deep information seeking and web interaction.
- **Coding Agents**: developing benchmarks and systems for automated software engineering.
- **Tool-Augmented LLMs**: integrating large language models with APIs and external tools.
- **Financial Agents**: exploring how agents can trade stocks and generate returns in financial markets.
- **LLM Inference on Edge Devices**: efficient LLM deployment on web and mobile platforms.

My [**research group**](https://cs.pku.edu.cn/info/1025/2713.htm) is affiliated with the Data Space Technology and Systems Research Center, led by [Academician Hong Mei](https://scholar.google.com/citations?user=b-ZYIwoAAAAJ&hl=en) and [Professor Gang Huang](https://scholar.google.com/citations?hl=en&user=5FxmC14AAAAJ), with faculty members including [Xuanzhe Liu](https://scholar.google.com/citations?hl=en&user=eOhSVi8AAAAJ), [Xin Jin](https://scholar.google.com/citations?hl=en&user=NhsdGBUAAAAJ), and [Yun Ma](https://scholar.google.com/citations?hl=en&user=1hnJ3TgAAAAJ). The center is a leading research group in China for *machine learning systems*, *software engineering*, and *systems*.

# Experience

- **2025.12 -- now** Intern, [UniPat AI](https://unipat.ai/). Research on code data synthesis.
- **2025.06 -- 2025.11** Intern, [Tongyi DeepResearch Group](https://tongyi-agent.github.io/zh/about/), Alibaba. Research on data synthesis for DeepResearch, including WebShaper and WebLeaper. [DeepResearch GitHub](https://github.com/Alibaba-NLP/DeepResearch).
- **2022 -- now** Outstanding Research Award, Ubiquant Scholarship, [Peking University](https://www.pku.edu.cn/).
- **2022.09 -- now** Ph.D. candidate in Computer Science and Technology, [School of Computer Science](http://cs.pku.edu.cn/) in [Peking University](https://www.pku.edu.cn/).
- **2024.10 -- 2025.03** Intern of [Miracleplus](https://www.miracleplus.com/) & [Shanghai AI Lab](https://www.shlab.org.cn/). Explore RAG Data Synthesis.
- **2022.08 -- 2022.10** Intern of [Alibaba Innovative Research](https://damo.alibaba.com/collaborations) in Technical & Quality of [Fliggy](https://www.fliggy.com), [Alibaba](https://www.alibaba.com). Explore Anomaly detection using page access logs. Resigned early to work remotely due to the pandemic.
- **2019 -- 2021** National Scholarship, First Class Scholarship, and Wu Yajun Scholarship of [Northwestern Polytechnical University](http://www.nwpu.edu.cn).
- **2018.09 -- 2022.07** B.Sc. in Computer Science and Technology, [School of Computer Science](http://jsj.nwpu.edu.cn/) in [Northwestern Polytechnical University](http://www.nwpu.edu.cn/).

# Publications

<sup>*</sup> Co-first author or project leader. <sup>&#9993;</sup> Corresponding author.

1. **Haiyang Shen**, Xuanzhong Chen, Wendong Xu, **Yun Ma**, Liang Chen, Kuan Li. EvoCodeBench: Evaluating Coding Agents in Multi-Turn Iterative Interactions. **2026**. **NeurIPS Submission**.

2. **Haiyang Shen**<sup>*</sup>, Taian Guo<sup>*</sup>, Xuanzhong Chen<sup>*</sup>, Mugeng Liu, Weichen Bi, Wenchun Jing, Sixiong Xie, Zhuofan Shi, Yudong Han, Chongyang Pan, Siqi Zhong, Jinsheng Huang, Ming Zhang<sup>&#9993;</sup>, **Yun Ma**<sup>&#9993;</sup>. MindLoom: Composing Thought Modes for Frontier-Level Reasoning Data Synthesis. **2026**. **NeurIPS Submission**.

3. **Haiyang Shen**<sup>*</sup><sup>&#9993;</sup>, Jiuzheng Wang<sup>*</sup><sup>&#9993;</sup>, Taian Guo, Mugeng Liu, Wenchun Jing, Chongyang Pan, Siqi Zhong, Zhiyang Chen, Weichen Bi, Yudong Han, Xiaoying Bai<sup>&#9993;</sup>, **Yun Ma**<sup>&#9993;</sup>. QuestBench: A Course-Curated Benchmark for Expert-Level Cross-Domain Deep Search in Language Models. **2026**. **NeurIPS Submission**.

4. **Haiyang Shen**<sup>*</sup>, Wendong Xu<sup>*</sup>, Xuanzhong Chen<sup>*</sup>, **Yun Ma**<sup>&#9993;</sup>, Liang Chen<sup>&#9993;</sup>, Kuan Li<sup>&#9993;</sup>. Genesis: Coding Task Synthesis via Iterative Multi-Agent Coordination. **2026**. **NeurIPS Submission**.

5. Zhengwei Tao<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Baixuan Li<sup>*</sup>, Wenbiao Yin, Jialong Wu, Kuan Li, Zhongwang Zhang, Huifeng Yin, Rui Ye, Yong Jiang, Pengjun Xie, Fei Huang, Jingren Zhou, Wentao Zhang<sup>&#9993;</sup>, **Yun Ma**<sup>&#9993;</sup>, Zhiqiang Gao<sup>&#9993;</sup>. Empowering Efficiency and Efficacy in WebAgent via Enabling Info-Rich Seeking. The Fourteenth International Conference on Learning Representations (ICLR). **2026**. **Top Conference on Machine Learning**.
   - [arXiv](https://arxiv.org/pdf/2510.24697)
   - [Project/GitHub](https://github.com/Alibaba-NLP/DeepResearch)

6. **Haiyang Shen**<sup>*</sup>, Hang Yan<sup>*</sup>, Zhongshi Xing, Mugeng Liu, Yue Li, Zhiyang Chen, Yuxiang Wang, Jiuzheng Wang, **Yun Ma**<sup>&#9993;</sup>. DRAGON: Domain-specific Robust Automatic Data Generation for RAG Optimization. Findings of the Association for Computational Linguistics: EACL 2026. **2026**. **Top Conference on NLP**.
   - [Paper](https://aclanthology.org/2026.findings-eacl.56/)
   - [arXiv](http://arxiv.org/abs/2505.10989)

7. Siqi Zhong, Mugeng Liu, **Haiyang Shen**, Chongyang Pan, **Yun Ma**<sup>&#9993;</sup>. LaTune: Lightweight and Adaptive Configuration Tuning for LLM Inference on Edge Devices. The Web Conference 2026. **2026**. **Top Conference on Web**.

8. **Haiyang Shen**, Yue Li, Desong Meng, Dongqi Cai, Sheng Qi, Li Zhang, Mengwei Xu, **Yun Ma**<sup>&#9993;</sup>. ShortcutsBench: A Large-Scale Real-world Benchmark for API-based Agents. The Thirteenth International Conference on Learning Representations (ICLR). **2025**. **Top Conference on Machine Learning**.
   - [Paper](https://openreview.net/forum?id=kKILfPkhSz)
   - [arXiv](https://arxiv.org/abs/2407.00132)
   - [Project/GitHub](https://github.com/eachsheep/shortcutsbench)

9. Zhiyang Chen, **Yun Ma**<sup>&#9993;</sup>, **Haiyang Shen**, Mugeng Liu. WeInfer: Unleashing the Power of WebGPU on LLM Inference in Web Browsers. Proceedings of the ACM on Web Conference 2025. **2025**. **Top Conference on Web**.
   - [Paper](https://openreview.net/forum?id=Qu2itILaoZ)

10. **Haiyang Shen**, **Yun Ma**<sup>&#9993;</sup>. Characterizing the Developer Groups for Metaverse Services in Roblox. 2024 IEEE International Conference on Software Services Engineering (SSE). **2024**.
    - [DOI](https://doi.org/10.1109/SSE62657.2024.00039)

11. **Haiyang Shen**, **Yun Ma**<sup>&#9993;</sup>, Yue Li, Xiaoling Wang, Deyu Tian, Tong Jia, Tengfei He, Shenghua Luo. ADPal: Automatic Detection of Troubled Users in Online Service Systems via Page Access Logs. 2023 IEEE International Conference on Web Services (ICWS). **2023**. **Top Conference on Service Computing**.
    - [DOI](https://doi.org/10.1109/ICWS60048.2023.00082)
    - [GitHub](https://github.com/eachsheep/abnormaldetection)

12. Deyu Tian, **Haiyang Shen**, **Yun Ma**<sup>&#9993;</sup>. Parallelizing DNN Inference in Mobile Web Browsers on Heterogeneous Hardware. Proceedings of the 20th Annual International Conference on Mobile Systems, Applications and Services (MobiSys). **2022**. **Top Conference on Mobile Computing**.
    - [DOI](https://doi.org/10.1145/3498361.3538763)

13. Mugeng Liu, **Haiyang Shen**, Yixuan Zhang, Hong Mei, **Yun Ma**<sup>&#9993;</sup>. WebAssembly for Container Runtime: Are We There Yet? ACM Transactions on Software Engineering and Methodology. **2025**. **Top Journal in Software Engineering**.
    - [DOI](https://doi.org/10.1145/3712197)

14. Guoqing Wang, Zeyu Sun, Yizhou Chen, Yifan Zhao, **Haiyang Shen**, Qingyuan Liang, Dan Hao<sup>&#9993;</sup>. Beyond the Sum of Parts: Leveraging Entanglement for Bug Inducing Commit Localization. IEEE Transactions on Software Engineering. **2026**. **Top Journal in Software Engineering**.
    - [DOI](https://doi.org/10.1109/TSE.2025.3628362)

15. **Haiyang Shen**<sup>*</sup>, Xinbo Xu<sup>*</sup>, Xuanzhong Chen, Wendong Xu<sup>&#9993;</sup>, Elvis Zhang, Kaiyuan Chen, Xiaobo Hu, Rui Wang, Yang Liu, Yixin Ren, Yuan Gong, Liang Chen, Kuan Li<sup>&#9993;</sup>. Monthly-SWEBench: A Living, Rigorously Verified Benchmark for Real-World Software Engineering. **2026**. **Benchmark**.
    - [Benchmark](https://unipat.ai/benchmarks/MonthlySWEBench)

16. Liang Chen<sup>*</sup><sup>&#9993;</sup>, Weichu Xie<sup>*</sup>, Yiyan Liang<sup>*</sup>, Hongfeng He<sup>*</sup>, Hans Zhao<sup>*</sup>, ..., **Haiyang Shen**, Yixin Ren, Yang Liu, Yuan Gong, Kuan Li<sup>&#9993;</sup>. BabyVision: Visual Reasoning Beyond Language. **2026**.
    - [arXiv](https://arxiv.org/abs/2601.06521)

17. Taian Guo<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Junyu Luo, Zhongshi Xing, Hanchun Lian, Jinsheng Huang, Binqi Chen, Luchen Liu, **Yun Ma**<sup>&#9993;</sup>, Ming Zhang<sup>&#9993;</sup>. MEME: Modeling the Evolutionary Modes of Financial Markets. **2026**.
    - [arXiv](https://arxiv.org/abs/2602.11918)

18. Sixiong Xie<sup>*</sup>, Zhuofan Shi<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Gang Huang, **Yun Ma**, Xiang Jing<sup>&#9993;</sup>. M3-BENCH: Process-Aware Evaluation of LLM Agents' Social Behaviors in Mixed-Motive Games. **2026**.
    - [arXiv](https://arxiv.org/abs/2601.08462)

19. Zhuofan Shi<sup>*</sup>, Hubao A<sup>*</sup>, Yufei Shao<sup>*</sup>, Dongliang Huang, Hongxu An, Chunxiao Xin, **Haiyang Shen**, Zhenyu Wang, Yunshan Na, Gang Huang, Xiang Jing<sup>&#9993;</sup>. MDAgent2: Large Language Model for Code Generation and Knowledge Q&A in Molecular Dynamics. **2026**.
    - [arXiv](https://arxiv.org/abs/2601.02075)

20. Tongyi DeepResearch Team, Baixuan Li, Bo Zhang, Dingchu Zhang, ..., **Haiyang Shen**, Xinyu Geng, Yuning Wu, Zijian Li, Yong Jiang<sup>&#9993;</sup>. Tongyi DeepResearch Technical Report. **2025**.
    - [arXiv](https://arxiv.org/abs/2510.24701)
    - [GitHub](https://github.com/Alibaba-NLP/DeepResearch)

21. Zhengwei Tao<sup>*</sup>, Jialong Wu<sup>*</sup>, Wenbiao Yin<sup>&#9993;</sup>, Junkai Zhang, Baixuan Li, **Haiyang Shen**, Kuan Li, Liwen Zhang, Xinyu Wang, Yong Jiang<sup>&#9993;</sup>, Pengjun Xie, Fei Huang, Jingren Zhou. WebShaper: Agentically Data Synthesizing via Information-Seeking Formalization. **2025**.
    - [arXiv](https://arxiv.org/abs/2507.15061)
    - [Project/GitHub](https://github.com/Alibaba-NLP/DeepResearch)

22. Taian Guo<sup>*</sup>, **Haiyang Shen**<sup>*</sup>, Jinsheng Huang, Zhengyang Mao, Junyu Luo, Binqi Chen, Zhuoru Chen, Xuhui Liu, Bingyu Xia, Luchen Liu<sup>*</sup>, **Yun Ma**<sup>&#9993;</sup>, Ming Zhang<sup>&#9993;</sup>. MASS: Multi-Agent Simulation Scaling for Portfolio Construction. **2025**.
    - [arXiv](https://arxiv.org/abs/2505.10278)
    - [GitHub](https://github.com/gta0804/MASS)

23. Baixuan Li<sup>*</sup><sup>&#9993;</sup>, Dingchu Zhang<sup>*</sup>, Jialong Wu<sup>*</sup>, Wenbiao Yin<sup>&#9993;</sup>, Zhengwei Tao, Yida Zhao, Liwen Zhang, **Haiyang Shen**, Runnan Fang, Pengjun Xie, Jingren Zhou, Yong Jiang<sup>&#9993;</sup>. ParallelMuse: Agentic Parallel Thinking for Deep Information Seeking. **2025**.
    - [arXiv](https://arxiv.org/abs/2510.24698)

24. Qi Yang, Weichen Bi, **Haiyang Shen**, Yaoqi Guo, **Yun Ma**<sup>&#9993;</sup>. PixelWeb: The First Web GUI Dataset with Pixel-Wise Labels. **2025**.
    - [arXiv](https://arxiv.org/abs/2504.16419)

# Correspondence

- Email: [hyshen@stu.pku.edu.cn](mailto:hyshen@stu.pku.edu.cn)
- GitHub: [https://github.com/eachsheep](https://github.com/eachsheep)
- Google Scholar: [https://scholar.google.com/citations?user=BI-Mb_EAAAAJ](https://scholar.google.com/citations?user=BI-Mb_EAAAAJ)
- Homepage: [https://eachsheep.space](https://eachsheep.space)
