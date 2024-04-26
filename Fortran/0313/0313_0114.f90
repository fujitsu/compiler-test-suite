	implicit none
        integer*8 i
	complex*16    test(10)/10*0/
	complex*16    ans(10)
        complex*8 input(10)
	data input/1,10,3,8,6,5,7,4,9,2/
        data ans/0,0,0,0,0,1,0,0,0,0/
	do i=1,10
        if (input(i)  .eq. (5,0)) then
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
