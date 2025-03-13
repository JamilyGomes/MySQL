import pandas as pd

df = pd.read_csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")
print(df.head())


#(set_index importantissimo)
df.set_index("PassengerId", inplace= True)
print(df.head(12))


print(df.columns)

df.values

df.describe()

print(df.loc[1])

print(df.loc[[1,2,3]])

print(df.loc[[1,2], ['Name', 'Sex', 'Age']])

print(df.loc[10:20])

print(df.loc[10:30:2])

print(df.loc[10:])

print(df.query('Age>20').head())
print(df.query('Age<20'))