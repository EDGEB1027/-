library(ggplot2)

sales_data <- data.frame(
  Month = factor(c("9월", "10월", "11월", "12월", "1월", "2월"), levels = c("9월", "10월", "11월", "12월", "1월", "2월")),
  Total_Sales = c(528, 550.1, 546.9, 548, 553.3, 555.4),  
  Target_Sales = c(528, 550, 572.9, 596.8, 621.7, 647.6)  
)

sales_bar_chart <- ggplot(sales_data, aes(x = Month)) +
  geom_bar(aes(y = Total_Sales, fill = "총 매출"), stat = "identity", position = "identity", width = 0.7) +
  geom_bar(aes(y = Target_Sales, fill = "목표 매출"), stat = "identity", position = "identity", width = 0.4) +
  labs(title = "월별 총 매출 대 목표 매출",
       y = "매출 (10,000 USD)", x = "월") +
  scale_fill_manual(values = c("총 매출" = "blue", "목표 매출" = "red")) +
  theme_minimal()

print(sales_bar_chart)