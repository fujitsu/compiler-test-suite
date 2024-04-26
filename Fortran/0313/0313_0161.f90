	implicit none
        integer*8 i
	complex*16    test(10)/10*0/
	complex*16    ans(10)
        logical*8 input(10)
	data input/0,10,0,8,6,0,7,0,9,0/
        data ans  /0,1 ,0,1,1,0,1,0,1,0/
	do i=1,10
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
