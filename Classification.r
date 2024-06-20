occupancy_data<- read.table("datatraining.txt", sep = ",")

names(occupancy_data)

head(occupancy_data)

tail(occupancy_data)

summary(occupancy_data)

str(occupancy_data)

nrow(occupancy_data)

ncol(occupancy_data)

dim(occupancy_data)

occupancy_data_f = occupancy_data[,c(2,3,4,5,7)]

occupancy_data_f$euclidean_distance= NA

tem =24.15
hum=27.2675
lit=429.5
co2=715.00

length= nrow(occupancy_data_f )

for(i in 1:length)
{
  occupancy_data_f$euclidean_distance[i]= sqrt(
    (occupancy_data_f$Temperature[i]-tem)^2+
      (occupancy_data_f$Humidity[i]-hum)^2+
      (occupancy_data_f$Light[i]-lit)^2+
      (occupancy_data_f$CO2[i]-co2)^2
  )
}

occupancy_data_f = 
  occupancy_data_f[order(occupancy_data_f1$euclidean_distance),]
occupancy_data_f

k=5
occupancy_data_f[1:k,]

class1= sum(occupancy_data_f$Occupancy[1:k]==1)

if(class1> k/2)
{
  print("The query point belongs to class 1")
}else{
  print("The query point belongs to class 0")
}


