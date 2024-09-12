	program main
	integer i,c10(10),d20(10)
	common /com/i,c10,d20
	do i=1,10
	   c10(i)=i
	   d20(i)=i*i
	enddo
	print *,c10,d20
	end
