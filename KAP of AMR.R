#install packages
install.packages("tidyverse")
install.packages("readxl")
install.packages("gtsummary")
install.packages("gt")
install.packages("sjPlot")
install.packages("ggpubr")
install.packages("RColorBrewer")
install.packages("viridis")
install.packages("ggthemes")
install.packages("ggplot2")

#load packages
library(tidyverse)
library(readxl)
library(gtsummary)
library(gt)
library(sjPlot)
library(ggpubr)
library(RColorBrewer)
library(viridis)
library(ggthemes)
library(ggplot2)

#import data set
AMR_data<- readxl::read_excel("data/AMR_KAP_Data.xlsx")

#Table1:Demographic characteristics
AMR_data |> 
  select(1:11) |>
  tbl_summary(statistic = list(all_continuous() ~ "{mean}±{sd}")) |> 
  as_gt() |> 
  gtsave("tables/Table1.docx")

#Table 2: Major sources of information about antibiotic parents
AMR_data |>
  select(41:49) |>
  tbl_summary(statistic = list(all_continuous() ~ "{mean}±{sd}")) |> 
  as_gt() |> 
  gtsave("tables/Table2.docx")
