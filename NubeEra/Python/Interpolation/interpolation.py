#Libararies
import numpy as np
import pandas as pd
from scipy.interpolate import interp1d

#Dataset
data ={
    "Timestamp":["2023-07-20 00:00","2023-07-21 00:00","2023-07-24 00:00","2023-07-26 00:00"],
    "value":[10,20,np.map,60]
}

#Dataframe
df = pd.DataFrame(data)
df["Timestamp"] = pd.to_datetime(df["Timestamp"])
#Sort dataframe by timestamp
df.sort_values("Timestamp", inplace=True)
# Create interpolation function using linear interpolation
interpolation_value = interp1d(df["Timestamp"], df["value"], kind="linear", fill_value="extrapolate")

start_date = df["Timestamp"].min()
end_date = df["Timestamp"].max()

interpolation_timestamp = pd.date_range(start_date,end_date, freq="D")

interpolated_values = interpolation_value([interpolation_timestamp])
#Apply interpolation function to fill missing values

df = pd.DataFrame("Timestamp":interpolation_timestamp, "value":interpolated_value)