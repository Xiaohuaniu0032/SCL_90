library("pheatmap")
#SCL_data <- read.table("/work/home/fulongfei/project/BGI_Research/jingwei_zhipu_data/SCL_90/SCL_90.txt", header=TRUE)
SCL_data <- read.table("SCL_90.txt", header=TRUE)
#SCL_data <- as.matrix(SCL_data)
#SCL_data[,4:] <- as.numeric(SCL_data[,4:])
#col_limit <- ncol(SCL_data)
#print(head(SCL_data))
pdf("SCL-90.heatmap.pdf",width=10,height=5)
pheatmap(SCL_data[,4:ncol(SCL_data)], annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()



# https://arc.psych.wisc.edu/self-report/symptom-checklist-90-scl90/

# ITEM CODING
# Each item is scored on a scale from 0 to 4 based on how much an individual was bothered by each item in the last week:
# 0 = Not at all
# 1 = A little bit
# 2 = Moderately
# 3 = Quite a bit
# 4 = Extremely



# SCALES
# Somatization: 1, 4, 12, 27, 40, 42, 48, 49, 52, 53, 56, and 58
# Obsessive-compulsive: 3, 9, 10, 28, 38, 45, 46, 51, 55, and 65
# Interpersonal sensibility: 6, 21, 34, 36, 37, 41, 61, 69, and 73
# Depression: 5, 14, 15, 20, 22, 26, 29, 30, 31, 32, 54, 71, and 79
# Anxiety: 2, 17, 23, 33, 39, 57, 72, 78, 80, and 86
# Anger-hostility: 11, 24, 63, 67, 74, and 81
# Phobic-anxiety: 13, 25, 47, 50, 70, 75, and 82
# Paranoid ideation: 8, 18, 43, 68, 76, and 83
# Psychoticism: 7, 16, 35, 62, 77, 84, 85, 87, 88, and 90
# Additional items: 19, 44, 59, 60, 64, 66 and 89


# 中文版
# https://www.imufe.edu.cn/xljkjyzx/info/1016/1107.htm#:~:text=%E3%80%8A%E7%97%87%E7%8A%B6%E8%87%AA%E8%AF%84%E9%87%8F%E8%A1%A8,%E4%BB%A5%E6%9D%A5%E7%9A%84%E5%BF%83%E7%90%86%E5%81%A5%E5%BA%B7%E7%8A%B6%E5%86%B5%E3%80%82
# 将9个因子按顺序排列

# 1) 躯体化：该因子主要反映身体不适感，包括心血管、胃肠道、呼吸和其他系统的主诉不适，和头痛、背痛、肌肉酸痛，以及焦虑的其他躯体表现。
Somatization_idx <- c(1,4,12,27,40,42,48,49,52,53,56,58)
Somatization_data <- SCL_data[,paste(("A"),Somatization_idx,sep="")]
print(head(Somatization_data))
pdf("Somatization_data.pdf")
pheatmap(Somatization_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()

# 2) 强迫症状
Obsessive_idx <- c(3, 9, 10, 28, 38, 45, 46, 51, 55, 65)
Obsessive_data <- SCL_data[,paste(("A"),Obsessive_idx,sep="")]
pdf("Obsessive_data.pdf")
pheatmap(Obsessive_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()

# 3) 人际关系敏感
Interpersonal_idx <- c(6, 21, 34, 36, 37, 41, 61, 69, 73)
Interpersonal_data <- SCL_data[,paste(("A"),Interpersonal_idx,sep="")]
pdf("Interpersonal_data.pdf")
pheatmap(Interpersonal_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()

# 4) 抑郁
Depression_idx <- c(5, 14, 15, 20, 22, 26, 29, 30, 31, 32, 54, 71, 79)
Depression_data <- SCL_data[,paste(("A"),Depression_idx,sep="")]
pdf("Depression_data.pdf")
pheatmap(Depression_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()

# 5) 焦虑
Anxiety_idx <- c(2,17, 23, 33, 39, 57, 72, 78, 80, 86)
Anxiety_data <- SCL_data[,paste(("A"),Anxiety_idx,sep="")]
pdf("Anxiety_data.pdf")
pheatmap(Anxiety_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()

# 6) 敌对
hostility_idx <- c(11, 24, 63, 67, 74, 81)
hostility_data <- SCL_data[,paste(("A"),hostility_idx,sep="")]
pdf("hostility_data.pdf")
pheatmap(hostility_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()

# 7) 恐怖
Phobic_idx <- c(13, 25, 47, 50, 70, 75, 82)
Phobic_data <- SCL_data[,paste(("A"),Phobic_idx,sep="")]
pdf("Phobic_data.pdf")
pheatmap(Phobic_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()

# 8) 偏执
Paranoid_idx <- c(8, 18, 43, 68, 76, 83)
Paranoid_data <- SCL_data[,paste(("A"),Paranoid_idx,sep="")]
pdf("Paranoid_data.pdf")
pheatmap(Paranoid_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()

# 9) 精神病性
Psychoticism_idx <- c(7, 16, 35, 62, 77, 84, 85, 87, 88, 90)
Psychoticism_data <- SCL_data[,paste(("A"),Psychoticism_idx,sep="")]
pdf("Psychoticism_data.pdf")
pheatmap(Psychoticism_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()

# 10) 其他
Additional_idx <- c(19, 44, 59, 60, 64, 66, 89)
Additional_data <- SCL_data[,paste(("A"),Additional_idx,sep="")]
pdf("Additional_data.pdf")
pheatmap(Additional_data, annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
dev.off()


# new data order by 1/2/3...
new_SCL_data <- cbind(SCL_data[,1:3],Somatization_data,Obsessive_data,Interpersonal_data,Depression_data,Anxiety_data,hostility_data,Phobic_data,Paranoid_data,Psychoticism_data,Additional_data)
print(head(new_SCL_data))

rownames(new_SCL_data) <- paste("Sample",1:nrow(new_SCL_data),sep="")

pdf("SCL-90.heatmap.final.pdf",width=13,height=5)
#pheatmap(new_SCL_data[,4:ncol(new_SCL_data)], annotation_names_row = FALSE, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE)
#dev.off()


# add col annotation
annotation_col = data.frame(
	Factors = factor(rep(c("Somatization","Obsessive-compulsive","Interpersonal sensibility","Depression","Anxiety",
						   "Anger-hostility","Phobic-anxiety","Paranoid ideation","Psychoticism","Additional items"),
					 	 c(length(Somatization_idx),length(Obsessive_idx),length(Interpersonal_idx),
					 	   length(Depression_idx),length(Anxiety_idx),length(hostility_idx),length(Phobic_idx),
					 	   length(Paranoid_idx),length(Psychoticism_idx),length(Additional_idx))
					 	 ),
						levels=c("Somatization","Obsessive-compulsive","Interpersonal sensibility","Depression",
								"Anxiety","Anger-hostility","Phobic-anxiety","Paranoid ideation","Psychoticism","Additional items"),
						)
	)

rownames(annotation_col) <- paste(("A"),c(Somatization_idx,Obsessive_idx,Interpersonal_idx,Depression_idx,Anxiety_idx,hostility_idx,Phobic_idx,Paranoid_idx,Psychoticism_idx,Additional_idx),sep="")
pheatmap(new_SCL_data[,4:ncol(new_SCL_data)], annotation_col = annotation_col, show_rownames = FALSE, cluster_rows = FALSE, cluster_cols = FALSE, fontsize_col = 7)
dev.off()



# 增加X轴注释,并进行聚类. 
# 性别、年级两个变量

# 查看是否在不同层面水平存在共性

# 先年级
pdf("SCL-90.heatmap.cluster_by_grade.final.pdf",width=13,height=5)
annotation_row_grade = data.frame(
                    Class = factor(new_SCL_data$Grade,levels = c("C1","C2","C3","G1","G2","G3"))
                    )                  	
rownames(annotation_row_grade) <- paste("Sample",1:nrow(new_SCL_data),sep="")
pheatmap(new_SCL_data[,4:ncol(new_SCL_data)], annotation_col = annotation_col, annotation_row = annotation_row_grade, show_rownames = FALSE, cluster_rows = TRUE, cluster_cols = FALSE, fontsize_col = 7)
dev.off()

# 再性别
pdf("SCL-90.heatmap.cluster_by_sex.final.pdf",width=13,height=5)
annotation_row_sex = data.frame(
                    Class = factor(new_SCL_data$Sex,levels = c("Female","Male"))
                    )
rownames(annotation_row_sex) <- paste("Sample",1:nrow(new_SCL_data),sep="")
pheatmap(new_SCL_data[,4:ncol(new_SCL_data)], annotation_col = annotation_col, annotation_row = annotation_row_sex, show_rownames = FALSE, cluster_rows = TRUE, cluster_cols = FALSE, fontsize_col = 7)
dev.off()

# 最后根据性别*2,年级*6,总共=12个划分














