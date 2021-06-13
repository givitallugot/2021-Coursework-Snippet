# 2021-Coursework-Snippet

### Library Description

```bash
├── G11825 자료분석특론1
│   ├── Code
│   │   ├── HW1.Rmd
│   │   └── HW2.Rmd
│   ├── Project
│   │   ├── 1,2-basisexpansion_meanfunction.Rmd
│   │   ├── 3-timeseries.Rmd
│   │   └── 4-clustering.Rmd
├── G11830 베이지안통계특론1
│   ├── Code
│   │   ├── CH4.Rmd 
│   │   ├── CH8.Rmd 
│   │   ├── CH10.Rmd 
│   │   ├── HW1.Rmd 
│   │   ├── HW2.Rmd 
│   │   └── HW3.Rmd 
│   ├── Project
│   │   ├── FinalProject.Rmd
│   │   ├── project_nb_1.txt
│   │   ├── project_pois_1.txt
│   │   ├── project_pois_glmm.txt
│   │   ├── project_pois_gvs.txt
│   │   └── project_pois_ssvs.txt
├── G11834 고급선형모형론
│   ├── Code
│   │   ├── (HW1.pdf No File.)
│   │   ├── (HW2.pdf No File.)
│   │   └── HW3.Rmd
│   ├── Project
│   │   └── ProjectCode.Rmd
├── G90009 블록체인의기초
│   ├── Code
│   │   ├── 0518_class.sol
│   │   ├── 0518_classA.sol
│   │   ├── 0601_bankacount.sol
│   │   ├── 0601_incdec.sol
│   │   ├── 0608_mapping.sol
│   │   └── 0608_token.sol
└── .DS_Store
``` 
<br>


# [블록체인의기초] Code Description
Ethereum 기반의 [Remix][remix] 사이트에서 진행한 간단한 solidity 실습

- 숫자 자동 증감 계약 생성

- 계좌 생성 / 예금 인출 함수를 생성하여 잔고 변화 확인

- 토큰 생성

- 매핑 / 저자와 도서 연결

[remix]: https://remix.ethereum.org/

<br>

# [고급선형모형론] Project Description
인과 추론(Causal Inference) 수업으로 논문 리뷰 및 실제 자료로 이를 구현하는 기말 개인 프로젝트 진행

### [선정 논문: https://doi.org/10.1016/j.aap.2016.04.007][paper]
### [PPT 자료][ppt-causal]

### 논문 소개
![image-1](https://github.com/givitallugot/2021-Coursework-Snippet/blob/main/Image-Causal/%EC%8A%AC%EB%9D%BC%EC%9D%B4%EB%93%9C2.jpeg)
영국 런던에서 20 mile per hours zone이 교통사고 사상자 수에 미치는 영향을 causal inference를 통해 분석한 논문
분석 방법으로 Doubly robust estimation을 중점적으로 사용하고, IPW, Regression Adjustment, Propensity score matching 또한 비교를 위해 사용

### 실제 데이터 분석 결과
![image-2](https://github.com/givitallugot/2021-Coursework-Snippet/blob/main/Image-Causal/%EC%8A%AC%EB%9D%BC%EC%9D%B4%EB%93%9C15.jpeg)
Propensity Score matching 후 Outcome model을 할 때 ACE는 2.51이며 사용된 변수는 모두 유의

<br>

![image-3](https://github.com/givitallugot/2021-Coursework-Snippet/blob/main/Image-Causal/%EC%8A%AC%EB%9D%BC%EC%9D%B4%EB%93%9C16.jpeg)
40 mile per hours zone에 따른 outcome의 causal effect는 논문과 반대였고 이러한 결과가 도출된 이유 세 가지 정리

[paper]: https://www.sciencedirect.com/science/article/abs/pii/S0001457516301129
[ppt-causal]: https://github.com/givitallugot/2021-Coursework-Snippet/tree/main/Image-Causal 

<br>

# [자료분석특론1] Project Description
수업 시간에 배운 함수형 데이터 분석(Functional Data Analysis)로 실제 데이터 분석 수행하는 기말 팀 프로젝트 진행

<br>

| 감염병 | 발생 기간 | 발생 국가 |
| ------ | ----------- | ------ |
| 코로나(Covid19) | 2020.01.21 ~ 현재 (> 480일) | 290개 |
| 신종플루(H1N1) | 2009.04.24 ~ 2009.05.07 (50일) | 133개 |
| 사스(SARS) | 2003.03.17 ~ 2003.07.11 (96일) | 37개 |

### [선정 주제: 전세계적으로 유행했던 감염병의 국가별 누적 확진자 데이터를 이용하여 발생시기/국가/기간이 다름에도 FDA를 통해 분석 및 비교][dataset-1]
### [PPT 자료][ppt-fda]

### 1. Mean Function
- Penalized Smoothing을 통해 Basis Expansion
- Basis Expansion을 바탕으로 Functional Mean 을 추정

### 2. Functional Regression
- Scalar(X)-on-Function(Y) Regression 수행
- 대륙 효과를 추가하여 각 대륙의 추세를 전세계 평균 누적 확진자와 비교 가능

### 3. Functional Timeseries
- Functional ETS, ARIMA 수행
- 14, 30일 장기 예측 수행 시 실제 데이터와 비슷한 추세

### 4. Functional Clustering
- funFEM, funHDDC, fdakma 패키지로 Functional Model-Based, Kmeans 수행
- 누적 확진자 기울기 수준에 따라 클러스터 묶임

<br>

### Collaborator

* [@JngHyun][jh-git]

[jh-git]: https://github.com/JngHyun
[dataset-1]: https://www.kaggle.com/siraznaorem/n-covid-vs-mers-vs-sars-corona-flu-wars/#data
[ppt-fda]: https://github.com/givitallugot/2021-Coursework-Snippet/tree/main/Image-FDA

<br>

# [베이지안통계특론1] Project Description
수업 시간에 배운 내용을 적용한 데이터 분석 또는 새로운 알고리즘 제안하는 기말 개인 프로젝트 진행

### [선정 주제: Medical Cost 데이터에 Bayesian GVS 기법을 통한 변수 선택 및 Bayesian GLMM 적합][dataset-2]

### 1. project_pois_1.txt & project_nb_1.txt
- Bayesian GLM(포아송, 음이항 분포) 적합 후 일반적인 GLM과 비교

### 2. project_pois_ssvs.txt
- Stochastic Search Variable Selection(spike-and-slab) 방법을 이용
- 상대적으로 적은 수의 변수 선택

### 3. project_pois_gvs.txt
- Gibbs Variable Selection 방법을 이용
- 적절한 변수 선택

### 4. project_pois_glmm.txt
- GVS로 선택된 변수를 이용하여 최종적으로 Bayesian Poisson GLMM 적합
- DIC 값이 작으며 환자별 개인차를 반영한 모델 

[dataset-2]: https://www.kaggle.com/mirichoi0218/insurance

<br>

*최종 결과물은 개인 과제물이므로 생략합니다.
