library(ggplot2)

# Data
costs_data <- data.frame(
  Month = factor(c("9월", "10월", "11월", "12월", "1월", "2월"), levels = c("9월", "10월", "11월", "12월", "1월", "2월")),
  Advertising_Costs = c(105.6, 95.04, 73.92, 52.8, 31.68, 31.68),  # Convert to 10,000 units
  Social_Network_Costs = c(0, 10.56, 31.68, 52.8, 73.92, 73.92)   # Convert to 10,000 units
)

# Line chart for Advertising Costs and Social Network Costs
costs_line_chart <- ggplot(costs_data, aes(x = Month)) +
  geom_line(aes(y = Advertising_Costs, color = "광고 비용"), size = 1, group = 1) +
  geom_line(aes(y = Social_Network_Costs, color = "소셜 네트워크 비용"), size = 1, group = 2) +
  geom_point(aes(y = Advertising_Costs, color = "광고 비용"), size = 3) +
  geom_point(aes(y = Social_Network_Costs, color = "소셜 네트워크 비용"), size = 3) +
  labs(title = "월별 광고 비용 및 소셜 네트워크 비용 변화",
       y = "비용 (10,000 USD)", x = "월") +
  scale_color_manual(values = c("광고 비용" = "blue", "소셜 네트워크 비용" = "red")) +
  theme_minimal()

# Display the line chart for costs
print(costs_line_chart)