import pandas as pd

def validate_nulls(df):
    null_counts = df.isnull().sum()
    return null_counts[null_counts > 0]

if _name_ == "_main_":
    df = pd.read_csv("sample_data.csv")
    issues = validate_nulls(df)
    if not issues.empty:
        print("Null validation failed:")
        print(issues)
    else:
        print("Validation passed.")
