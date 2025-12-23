# Advanced Sentiment Comparison — Baseline vs IndoBERT

## Overview
This section compares sentiment analysis results obtained from a baseline lexicon-based approach and an advanced transformer-based model (IndoBERT) applied to Indonesian economic news.

## Key Observations
- The baseline model classifies the majority of news articles as neutral, reflecting the informational nature of economic reporting.
- The IndoBERT model produces a more conservative sentiment distribution, assigning sentiment labels only to texts with stronger semantic signals.
- As a result, IndoBERT identifies fewer sentiment-bearing texts compared to the baseline approach.

## Interpretation
The difference in results highlights methodological contrasts.  
The lexicon-based baseline relies on the presence of predefined sentiment words, which tends to overclassify neutral narratives as neutral by default.  
In contrast, IndoBERT evaluates contextual meaning and semantic structure, leading to a more selective classification of sentiment.

This behavior indicates that the advanced model prioritizes confidence and contextual clarity over coverage, especially in domains dominated by descriptive and factual narratives such as economic news.

## Implication for Decision-Making
Baseline sentiment analysis is suitable for broad monitoring and trend observation due to its simplicity and coverage.  
IndoBERT, while more selective, is better positioned for identifying strong sentiment signals and potential shifts in public concern.

Using both approaches in combination can provide complementary insights, balancing breadth and depth in monitoring public perception of economic issues.
