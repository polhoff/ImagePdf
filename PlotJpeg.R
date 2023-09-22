

PlotJpeg = function(path, add=FALSE)
	{

	#included in package description
	#require('jpeg')
	jpg = readJPEG(path, native = TRUE) # read the file
	res = dim(jpg)[2:1] # get the resolution, [x, y]

	par(mar = c(0,0,0,0))
	par(mar = c(1,1,1,1))
	par(bg = 'grey80')
	
	# initialize an empty plot area if add==FALSE
	if (!add) # initialize an empty plot area if add==FALSE
#plot(1,1,xlim=c(1,res[1]),ylim=c(1,res[2]),asp=1,type='n',xaxs='i',yaxs='i',xaxt='n',yaxt='n',xlab='',ylab='',bty='n', bg = 'grey40')
		plot(1,1,xlim=c(1,res[1]),ylim=c(1,res[2]),asp=1,type='n',xaxs='i',yaxs='i',xaxt='n',yaxt='n',xlab='',ylab='',bty='n')
	
	
	rasterImage(jpg,1,1,res[1],res[2])

	}

#PlotJpeg('composite.jpg')


