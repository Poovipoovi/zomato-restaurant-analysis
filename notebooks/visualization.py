import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("data/zomato_clean.csv")

result = (
    df.groupby("cuisines")["votes"]
    .sum()
    .sort_values(ascending=False)
    .head(10)
)


plt.figure(figsize=(12,6))
result.sort_values().plot(kind="barh")

plt.title("Top 10 Cuisines by Total Customer Votes")
plt.xlabel("Total Votes")
plt.ylabel("Cuisine")

plt.tight_layout()

plt.savefig(
    "visualizations/cuisine_engagement.png",
    dpi=300,
    bbox_inches="tight"
)

plt.show()

plt.figure(figsize=(12,5))

result.plot(kind="bar")

plt.title("Top 10 Cuisines by Average Votes")
plt.xlabel("Cuisine")
plt.ylabel("Average Votes per Restaurant")

plt.tight_layout()

plt.savefig(
    "visualizations/cuisine_engagement.png",
    dpi=300,
    bbox_inches="tight"
)

plt.show()