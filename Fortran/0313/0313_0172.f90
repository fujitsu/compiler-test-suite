	implicit none
	real*4 dummy(10)/10*0/
        integer*8 i
	real*8    test(10)/10*0/
	real*8    ans(10)
        logical*8 input(10)
	data input/0,10,0,8,6,0,7,0,9,0/
        data ans/0,1,0,1,1,0,1,0,1,0/
	do i=1,10
        if (input(i)) then
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
