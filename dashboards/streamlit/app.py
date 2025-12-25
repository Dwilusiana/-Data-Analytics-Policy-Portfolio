import pandas as pd
import streamlit as st
import plotly.express as px

st.set_page_config(page_title="Inflation Dashboard", layout="wide")

st.title("Inflation Monitoring Dashboard")

# Load data
data_path = "data/inflation_by_region.csv"
df = pd.read_csv(data_path)

# Filter by year
year_selected = st.selectbox(
    "Select Year",
    sorted(df["year"].unique())
)

df_filtered = df[df["year"] == year_selected]

# Line chart
st.subheader("Monthly Inflation Trend")
fig_line = px.line(
    df_filtered,
    x="month",
    y="inflation_rate",
    color="region",
    markers=True
)
st.plotly_chart(fig_line, use_container_width=True)

# Bar chart
st.subheader("Average Inflation by Region")
avg_region = (
    df_filtered
    .groupby("region", as_index=False)["inflation_rate"]
    .mean()
)

fig_bar = px.bar(
    avg_region,
    x="region",
    y="inflation_rate",
    text_auto=True
)
st.plotly_chart(fig_bar, use_container_width=True)
