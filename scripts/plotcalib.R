jpeg("fig_output/calib_fig.jpg", width = 350, height = 350)

#Create the plot
plot(calib_clean, col = "red", pch = 16, 
     main = "Calibrarion of Absorbance", 
     xlab = "Concentration (M)", ylab = "Absorbance")
abline(calibfit)

#Close the file
dev.off()


