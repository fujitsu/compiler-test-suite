	implicit none
	real*4 dummy(10)/10*0/
        integer*8 i,j
	complex*8    test(10)/10*0/
	complex*8    ans(10)
        integer*8 input(10)
	data input/1,10,3,8,6,5,7,4,9,2/
        data ans/0,0,0,0,1,0,1,0,1,0/
	call init(j)
	do i=1,j,2
        if (input(i) > 5) then
	test(i) = 1
        dummy(i) = 1
        endif
	end do
        if (all(test==ans)) then
          print *,"OK"
        else
          print *,"NG"
          print *,int(test)
          print *,int(dummy)
        endif
	end
	subroutine init(j)
	integer*8 j
	j = 10
	end