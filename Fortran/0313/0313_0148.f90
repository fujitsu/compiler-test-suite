	implicit none
        integer*8 i
	real*8    test(10)/10*0/
	real*8    ans(10)
        integer*8 input(10)
	data input/1,10,3,8,6,5,7,4,9,2/
        data ans/0,1,0,1,1,0,1,0,1,0/
	do i=1,10
        if (input(i) > 5) then
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
