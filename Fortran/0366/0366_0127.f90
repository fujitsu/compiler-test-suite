	complex*8 c(1000),s
	real*4    r,img
	do i=1,1000
	  c(i) = sin(cmplx(real(i),1.0))
	end do
	s = sum(c)
	r = real(s)
	img = imag(s)
	if( abs((r-1.25601995))/r .gt. 0.2e-4 ) stop ' NG 1 '
	if( abs((img-0.632244468))/img.gt. 0.37e-4  ) stop ' NG 2 '
	print *,' PASS '
	end
