	integer*4 t,r,ans(10)
	do i=1,10
	   r = i -4
	   ans(i)=sign(1,r)
	enddo
	write(6,*) ans
	end
