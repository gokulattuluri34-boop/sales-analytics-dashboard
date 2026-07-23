import matplotlib.pyplot as plt
import pandas as pd

df = pd.read_csv("data/cleaned/cleaned_train.csv")

category_sales = df.groupby("Category")["Sales"].sum()

plt.figure(figsize=(8,5))
plt.bar(category_sales.index, category_sales.values)

plt.title("Sales by Category")
plt.xlabel("Category")
plt.ylabel("Sales")

plt.show()
df["Order Date"] = pd.to_datetime(df["Order Date"])

monthly_sales = df.groupby(df["Order Date"].dt.to_period("M"))["Sales"].sum()

plt.figure(figsize=(12,5))
plt.plot(monthly_sales.index.astype(str), monthly_sales.values)

plt.title("Monthly Sales Trend")
plt.xlabel("Month")
plt.ylabel("Sales")

plt.xticks(rotation=45)

plt.show()
plt.figure(figsize=(8,5))
plt.hist(df["Sales"], bins=30)

plt.title("Sales Distribution")
plt.xlabel("Sales")
plt.ylabel("Frequency")

plt.show()
segment_sales = df.groupby("Segment")["Sales"].sum()

plt.figure(figsize=(6,6))
plt.pie(
    segment_sales.values,
    labels=segment_sales.index,
    autopct="%1.1f%%"
)

plt.title("Sales by Segment")

plt.show()
top_products = (
    df.groupby("Product Name")["Sales"]
      .sum()
      .sort_values(ascending=False)
      .head(10)
)

plt.figure(figsize=(10,6))
plt.barh(top_products.index, top_products.values)

plt.title("Top 10 Products by Sales")
plt.xlabel("Sales")

plt.show()

