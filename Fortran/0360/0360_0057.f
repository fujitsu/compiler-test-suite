	real*4 a(16),b(16)/16*1/,c(16)/8*10,8*-10/
	real*8 x(16),y(16)/16*1/,z(16)/8*10,8*-10/
	do i=1,16
	  a(i) = sign(b(i),c(i))
	enddo
	write(6,*) a
	do i=1,16
	  x(i) = sign(y(i),z(i))
	enddo
	write(6,*) x
	end
