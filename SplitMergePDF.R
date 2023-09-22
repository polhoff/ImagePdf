
SplitPDF <- function(GSexe = 'D:\\sp\\prg\\gs\\gs9.27\\bin\\gswin32.exe', indir = dirdmp, infile, c_outfile = 'outname')
	{
	setwd(indir)
	
	c_split <- paste(GSexe, "    -sDEVICE=pdfwrite -dSAFER -o ", c_outfile, ".%d.pdf    ", infile, ".pdf", sep = '')

	shell(c_split)

	}

#library(ImagePdf)
#SplitPDF(infile = 'RBMP_2018', )

#SplitPDF(GSexe = 'C:/Program Files/gs/gs9.53.3/bin/gswin64', infile = 'Annex1TimeDeclarationContractPay', c_outfile = 'a', indir = dirdmp1)


#SplitPDF(GSexe = 'C:/\"Program Files\"/gs/gs9.53.3/bin/gswin64', infile = 'Annex1TimeDeclarationContractPay', c_outfile = 'a')



#SplitPDF(GSexe = 'C:\Program Files\gs\gs9.53.3\bin\gswin64', infile = 'RBMP_2018', )
































MergePDF <- function(GSexe = 'D:\\sp\\prg\\gs\\gs9.27\\bin\\gswin32.exe', indir = dirdmp, infiles, outfile)
	{
	setwd(indir)

	infiles <- paste(infiles, collapse = '  ')
	print(infiles)

	c_merge <- paste(GSexe, "    -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=", outfile, " -dBATCH ",  infiles, sep = '')


	#print(c_merge)

	shell(c_merge)
	#return(c_merge)
	}


pages_Pressures <- 15:24
infiles <- paste("outname.", pages_Pressures, ".pdf", sep = '')

#MergePDF(infiles = infiles, outfile = 'RBMP_Summary.pdf')


infiles <- c('SmarterBufferZ_Introduction_01.pdf', 'TypologyProtocol_IFS_02_SubfiguresNoTitle.pdf')
#MergePDF(GSexe = 'C:\\"Program Files"\\gs\\gs9.53.3\\bin\\gswin64', infiles = infiles, outfile = 'IFWS.pdf')


#x = MergePDF(infiles = infiles, outfile = 'RBMP_Summary.pdf')

infiles <- c('IrishFreshwatersTitlePage_160x90PageSize.pdf',  'TypologyProtocol_IFS_02_SubfiguresNoTitle.pdf')


infiles <- c('ResponseToComments_02.pdf', 'paper_CfRatios_Coper_Sep03_01_CopRef.pdf')

infiles <- c('IrishFreshwatersTitlePage_160x90PageSize_01.pdf',  'TypologyProtocol_IFS_02_SubfiguresNoTitle_05.pdf')


infiles <- c('JohnstownSeminarApril2021TitlePage_160x90PageSize.pdf',  'JohnstownSeminar_SubfiguresNoTitle_04.pdf')

#MergePDF(infiles = infiles, outfile = 'CopPaper_01.pdf')
#MergePDF(infiles = infiles, outfile = 'JohnstownSeminar.pdf')
#MergePDF(GSexe = 'C:\\"Program Files"\\gs\\gs9.53.3\\bin\\gswin64', infiles = infiles, outfile = 'JohnstownSeminar.pdf')





































InstallLatexPackage <- function(LATEXexe = 'C:\\Program Files\\MiKTex 2.9\\miktex\\bin\\latex', indir = dirdmp, infile)
	{


	setwd(indir)

	c_split <- paste(LATEXexe, '   ', infile, '.ins', sep = '')
	c_split <- paste(latex, '   ', infile, '.ins', sep = '')

	shell(c_split)
	}

#SplitPDF(infile = 'RBMP_2018')

#Run following
#  latex endfloat.ins

#InstallLatexPackage(infile = 'endfloat')


#setwd("D:/sp/other/accents/accents/")
#c_split <- paste(latex, '   ', infile, '.ins', sep = '')
#c_split <- "latex accents.ins"

#shell(c_split)


#a1 <- "C:\\Program Files\\MikeTex2.9\\miktex\\bin"

#setwd(a1)




#setwd("D:/sp/other/endfloat/endfloat/")
#c_split <- "tlmgr install endfloat.sty"


#shell(c_split)




#c_split <- "mpm --install=endfloat.sty"

