	implicit none
        integer*8 i,j
	complex*8    test(10)/10*0/
	complex*8    ans(10)
        logical*4 input(10)
	data input/0,10,0,8,6,0,7,0,9,0/
        data ans/0,0,0,0,1,0,1,0,1,0/
	call init(j)
	do i=1,j,2
        if (input(i)) then
	test(i) = 1
        endif
	end do
        if (all(test==ans)) then
          print *,"OK"
        else
          print *,"NG"
          print *,int(test)
        endif
	end
	subroutine init(j)
	integer*8 j
	j = 10
	end
