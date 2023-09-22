
AppendLateral <- function(file1, file2, output = 'out.jpg', indir = dirdmp, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{


	olddir = getwd()

	dirImg <- dirExe
	ImgConvertExe <- paste(dirImg, "convert.exe   ", sep = '')

	#composite -gravity center overlay.png  background.jpg  result1.jpg


	#c1 <- paste(ImgConvertExe, " composite -gravity center ", overlay, "  ", background, "  ", output, sep = '')
	c1 <- paste(ImgConvertExe, file1, "  ", file2, " +append ", output, sep = '')
	print(c1)
	
	setwd(indir)
	shell(c1)
	
	setwd(olddir)

	}

#AppendLateral('DSCF1724_small.JPG', 'ConvexHull.png')
#OverlayCentre('DSCF1724_small.JPG', 'ConvexHull_small.png')
#AppendLateral('DSCF1724_small.JPG', 'ConvexHull.png')
#setwd(paste(dirtop, 'Ballycanew/field/pic/FUJI_1121/155/', sep = ''))
#OverlayTopleft('composite.JPG', 'ConvexHull_small.png')
#AppendLateral('DSCF1729_small.JPG', 'ConvexHull_small.png')
























































AppendVertical <- function(file1, file2, output = 'out.jpg', indir = dirdmp, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{


	olddir = getwd()

	dirImg <- dirExe
	ImgConvertExe <- paste(dirImg, "convert.exe   ", sep = '')

	#composite -gravity center overlay.png  background.jpg  result1.jpg


	#c1 <- paste(ImgConvertExe, " composite -gravity center ", overlay, "  ", background, "  ", output, sep = '')
	c1 <- paste(ImgConvertExe, file1, "  ", file2, " -append ", output, sep = '')
	print(c1)
	
	setwd(indir)
	shell(c1)
	
	setwd(olddir)

	}

#AppendVertical('DSCF1724_small.JPG', 'ConvexHull.png')
#OverlayCentre('DSCF1724_small.JPG', 'ConvexHull_small.png')






























































FourImage <- function(file1, file2, file3, file4, output = 'out.jpg', indir = dirdmp, l_portable = FALSE, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{
	
	olddir = getwd()


	ImgConvertExe <- "convert.exe   "
	ImgConvertExe <- "magick   "

	if(l_portable)
		{
		dirImg <- dirExe
		ImgConvertExe <- paste(dirImg, "magick.exe   ", sep = '')
		}

	#composite -gravity center overlay.png  background.jpg  result1.jpg


	#c1 <- paste(ImgConvertExe, " composite -gravity center ", overlay, "  ", background, "  ", output, sep = '')

	c1 <- paste(ImgConvertExe, file1, "  ", file2, " +append ", 'a.jpg', sep = '')
	print(c1)
	
	setwd(indir)
	shell(c1)
	
	c1 <- paste(ImgConvertExe, file4, "  ", file3, " +append ", 'b.jpg', sep = '')
	print(c1)
	
	setwd(indir)
	shell(c1)
	
	
	
	#vertical append
	c1 <- paste(ImgConvertExe, 'a.jpg', "  ", 'b.jpg', " -append ", output, sep = '')
	print(c1)
	
	setwd(indir)
	shell(c1)
	
	
	file.remove('a.jpg')
	file.remove('b.jpg')
	
	
	
	
	
	setwd(olddir)

	}





#FourImage('DSCF2242_small.JPG', 'DSCF2247_small.JPG', 'DSCF2244_small.JPG', 'DSCF2245_small.JPG')













































































IM.Append <- function(file1, file2, output = 'out.jpg', c_type = "lateral", indir = dirdmp, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{


	olddir = getwd()

	dirImg <- dirExe
	ImgConvertExe <- paste(dirImg, "convert.exe   ", sep = '')

	c_switch <- NA

	if(c_type == "lateral")
		{
		c_switch = "  +append  "
		}
	
	if(c_type == "vertical")
		{
		c_switch = "  -append  "
		}
	
	#composite -gravity center overlay.png  background.jpg  result1.jpg


	#c1 <- paste(ImgConvertExe, " composite -gravity center ", overlay, "  ", background, "  ", output, sep = '')
	c1 <- paste(ImgConvertExe, file1, "  ", file2, c_switch, output, sep = '')
	print(c1)
	
	setwd(indir)
	shell(c1)
	
	setwd(olddir)

	}

#IM.Append('DSCF1724_small.JPG', 'ConvexHull.png')
#OverlayCentre('DSCF1724_small.JPG', 'ConvexHull_small.png')
































































































OverlayCentre <- function(background, overlay, output = 'out.jpg', indir = dirdmp, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{


	olddir = getwd()

	dirImg <- dirExe
	ImgConvertExe <- paste(dirImg, "composite.exe   ", sep = '')

	#composite -gravity center overlay.png  background.jpg  result1.jpg


	#c1 <- paste(ImgConvertExe, " composite -gravity center ", overlay, "  ", background, "  ", output, sep = '')
	c1 <- paste(ImgConvertExe, " -gravity center ", overlay, "  ", background, "  ", output, sep = '')
	print(c1)
	
	setwd(dirdmp)
	shell(c1)
	
	setwd(olddir)

	}

#OverlayCentre('DSCF1724_small.JPG', 'ConvexHull.png')
#OverlayCentre('DSCF1724_small.JPG', 'ConvexHull_small.png')





















































OverlayTopleft <- function(background, overlay, output = 'out.jpg', indir = getwd(), c_geom = "+10+10", l_portable = FALSE, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{


	olddir = getwd()


	ImgConvertExe <- "convert.exe   "
	ImgConvertExe <- "magick   convert  "

	if(l_portable)
		{
		dirImg <- dirExe
		ImgConvertExe <- paste(dirImg, "magick.exe   ", sep = '')
		}


	#composite -gravity center overlay.png  background.jpg  result1.jpg
	#convert  background.jpg  tool_marker.png -geometry +50+50 -composite result4.jpg


	#c1 <- paste(ImgConvertExe, " composite -gravity center ", overlay, "  ", background, "  ", output, sep = '')
	#c1 <- paste(ImgConvertExe, " -gravity center ", overlay, "  ", background, "  ", output, sep = '')
	c1 <- paste(ImgConvertExe, background, "  ", overlay, "   ", " -geometry  ", c_geom, " -composite ", output, sep = '')
	#c1 <- paste(ImgConvertExe, background, "  ", overlay, "   ", " -geometry -50-50 -composite ", output, sep = '')
	
	
	print(c1)
	
	setwd(indir)
	shell(c1)
	
	setwd(olddir)

	}


#OverlayTopleft('DSCF1724_small.JPG', 'ConvexHull_small.png')
#setwd(paste(dirtop, 'Ballycanew/field/pic/FUJI_1121/155/', sep = ''))
#OverlayTopleft('composite.JPG', 'ConvexHull.png')
#ShrinkImage('ConvexHull.png')
#OverlayTopleft('composite.JPG', 'small.ConvexHull.png')












































































ResizeImage <- function(largefile, smallfile = NA, indir = dirdmp, ScaleFactor = 50, l_portable = FALSE, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{

	
	olddir = getwd()


	ImgConvertExe <- "convert.exe   "
	ImgConvertExe <- "magick   convert  "

	if(l_portable)
		{
		dirImg <- dirExe
		ImgConvertExe <- paste(dirImg, "magick.exe   ", sep = '')
		}


	if(is.na(smallfile))
	#if(is.null(smallfile))
		{
		smallfile <- gsub(".JPG", "_small.JPG", largefile)
		}


	stopifnot(largefile != smallfile)
	
	
	#http://www.imagemagick.org/Usage/resize/
	#convert dragon.gif    -resize 50%  half_dragon.gif



	c1 <- paste(ImgConvertExe, " -resize ", ScaleFactor, "%  ", largefile, "  ", smallfile, sep = '')
	print(c1)
	
	setwd(indir)
	shell(c1)
	
	setwd(olddir)
	}


#ResizeImage('ConvexHull.png', 'ConvexHull_small.png')
#ResizeImage('DSCF2270.JPG')
#ResizeImage('NextToAppleTreeSquare.jpg', 'NextToAppleTreeSquare_small.jpg')


























































































ResizeImage.Arc <- function(largefile, smallfile = NA, indir = dirdmp, ScaleFactor = 50, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{

	olddir = getwd()

	dirImg <- dirExe
	ImgConvertExe <- paste(dirImg, "convert.exe   ", sep = '')

	if(is.na(smallfile))
	#if(is.null(smallfile))
		{
		smallfile <- gsub(".JPG", "_small.JPG", largefile)
		}

	
	#http://www.imagemagick.org/Usage/resize/
	#convert dragon.gif    -resize 50%  half_dragon.gif



	c1 <- paste(ImgConvertExe, " -resize ", ScaleFactor, "%  ", largefile, "  ", smallfile, sep = '')
	print(c1)
	
	setwd(dirdmp)
	shell(c1)
	
	setwd(olddir)
	}


#ResizeImage('ConvexHull.png', 'ConvexHull_small.png')






























































































ShrinkImage <- function(largefile, smallfile = NA, fileprefix = 'orig', indir = getwd(), ScaleFactor = 60, l_portable = FALSE, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{


	
	olddir = getwd()


	ImgConvertExe <- "convert.exe   "
	ImgConvertExe <- "magick   convert  "



	if(l_portable)
		{
		dirImg <- dirExe
		ImgConvertExe <- paste(dirImg, "magick convert   ", sep = '')
		}



	if(!is.na(fileprefix))
		{
		smallfile <- paste(fileprefix, ".", largefile, sep = '')
		}


	if(is.na(smallfile))
	#if(is.null(smallfile))
		{
		#smallfile <- gsub(".JPG", "_small.JPG", largefile)
		smallfile <- paste("small.", largefile, sep = '')
		}


	stopifnot(largefile != smallfile)
	
	
	c1 <- paste(ImgConvertExe, " -scale ", ScaleFactor, "%  ", largefile, "  ", smallfile, sep = '')
	print(c1)

	
	setwd(indir)
	shell(c1)
	
	setwd(olddir)
	}


#ShrinkImage('DSCF1724.JPG')
#ShrinkImage('DSCF2270.JPG')
#ShrinkImage('ConvexHull.png')
#setwd(dirdmp1); ShrinkImage('IMGP5635.jpg', ScaleFactor = 50)
#ResizeImage('IMGP5635.jpg', indir = dirdmp1)







































































































ShrinkImage.Arc <- function(largefile, smallfile = NA, indir = getwd(), ScaleFactor = 20, l_portable = FALSE, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{


	
	olddir = getwd()


	ImgConvertExe <- "convert.exe   "
	ImgConvertExe <- "magick   convert  "

	filetype <- as.logical(NA)
	filetype <- grep('JPG',largefile)
	filetype <- grep(c('png', 'PNG', 'jpg', 'JPG'),largefile)
	#filetype <- grep(paste(c('png', 'PNG', 'jpg', 'JPG'), collapse = '|'),largefile)
	filetype <- TRUE %in% grep(paste(c('jpg', 'JPG'), collapse = '|'),largefile)
	
	
	filetype <- TRUE %in% grep(paste(c('png', 'PNG'), collapse = '|'),largefile)
	filetype <- TRUE %in% grep(paste(c('png', 'PNG', 'jpg', 'JPG'), collapse = '|'),largefile)

	
	c_ext <- file_ext(largefile)
	

	if(l_portable)
		{
		dirImg <- dirExe
		ImgConvertExe <- paste(dirImg, "magick convert   ", sep = '')
		}


	if(is.na(smallfile))
	#if(is.null(smallfile))
		{
		#smallfile <- gsub(".JPG", "_small.JPG", largefile)
		smallfile <- paste("small.", largefile, sep = '')
		}

	c1 <- paste(ImgConvertExe, " -scale ", ScaleFactor, "%  ", largefile, "  ", smallfile, sep = '')
	print(c1)
	
	setwd(dirdmp)
	shell(c1)
	
	setwd(olddir)
	}


#ShrinkImage('DSCF1724.JPG')
#ShrinkImage('DSCF2270.JPG')




















































ShrinkImage.Arc <- function(largefile, smallfile = NA, indir = dirdmp, ScaleFactor = 20, dirExe = 'D:/sp/prg/ImageMagick-7.0.8-51-portable-Q16-x86/')
	{

	olddir = getwd()

	dirImg <- dirExe
	ImgConvertExe <- paste(dirImg, "convert.exe   ", sep = '')

	if(is.na(smallfile))
	#if(is.null(smallfile))
		{
		smallfile <- gsub(".JPG", "_small.JPG", largefile)
		}

	c1 <- paste(ImgConvertExe, " -scale ", ScaleFactor, "%  ", largefile, "  ", smallfile, sep = '')
	print(c1)
	
	setwd(dirdmp)
	shell(c1)
	
	setwd(olddir)
	}


#ShrinkImage('DSCF1724.JPG')
