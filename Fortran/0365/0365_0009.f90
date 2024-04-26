	subroutine sub(x)
	dimension x(1000)
	common /com/i
	s=0
	do i=1,i
	  x(i) = x(i)  + 1
	  s = s + x(i)
	end do
	print *,merge("OK","NG",s==sum(x))
	end
!
	common /com/i
	dimension x(1000)
	i=1000
	x=0
	call sub(x)
	print *,i
	end 
