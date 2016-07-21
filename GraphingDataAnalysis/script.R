if (!file.exists("summarySCC_PM25.rds") || !file.exists("Source_Classification_Code.rds")) {
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
    download.file(url = url, destfile = 'localfile.zip', method = 'curl')
    unzip(zipfile = "localfile.zip", exdir = ".")
}
if (!exists("NEI")) {
    NEI <- readRDS("summarySCC_PM25.rds")

}

if (!exists("SCC")) {
    SCC <- readRDS("Source_Classification_Code.rds")
}