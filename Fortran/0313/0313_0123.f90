	implicit none
	real*4 dummy(10)/10*0/
        integer*8 i
	real*4    test(10)/10*0/
	real*4    ans(10)
        complex*8 input(10)
	data input/1,10,3,8,6,5,7,4,9,2/
        data ans/0,0,0,0,0,1,0,0,0,0/
	do i=1,10
        if (input(i)  .eq. (5,0)) then
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