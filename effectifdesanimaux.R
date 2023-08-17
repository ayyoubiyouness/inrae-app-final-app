data2_scen2 <- data2_scen2 %>%
  mutate(scenario = rep("scenario2"))
data2
data2 <- data2 %>%
  mutate(scenario = rep("scenario1"))


aa <- rbind(data2, data2_scen2)
aa <- spread(aa, key = parameters, value = value)


library(highcharter)

bs.table = data.frame(
  Closing.Date = paste(2013:2017, 12, sep = "/"),
  Non.Current.Assets = c(13637344, 14075507, 14578093, 10911628, 10680998),
  Current.Assets = c(13078654, 12772388, 14226181, 10205708, 10950779),
  Non.Current.Liabilities = c(9376243, 8895126, 9715914, 9810157, 13493110),
  Current.Liabilities = c(5075985, 4963856, 5992229, 8859263, 4094183)
)

highchart() %>% 
  hc_chart(type = "column") %>%
  hc_plotOptions(column = list(stacking = "normal")) %>%
  hc_xAxis(categories = aa$scenario) %>%
  hc_add_series(name="nb_birth",
                data = aa$nb_birth
                ) %>%
  hc_add_series(name="nb_female",
                data = aa$nb_female
                ) %>%
  hc_add_series(name="nb_young",
                data = aa$nb_young
                ) %>%
  hc_add_series(name="nb_male",
                data = aa$nb_male
                ) %>%
  hc_add_theme(hc_theme_ft())



