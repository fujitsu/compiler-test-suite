	program main
	intrinsic ibclr
	integer input(10)
	data input/ z'ffffffff', z'ffff0000' , z'fffffffe' ,   &
                    z'7fffffff', z'0000ffff' , z'00007fff' ,   &
                    z'00007fff', z'000000ff' , z'0000007f' ,   &
                    0 /
	do i=1,10
	call test(ibclr(input(i),0),input(i),0)
	call test(ibclr(input(i),1),input(i),1)
	call test(ibclr(input(i),2),input(i),2)
	call test(ibclr(input(i),3),input(i),3)
	call test(ibclr(input(i),4),input(i),4)
	call test(ibclr(input(i),5),input(i),5)
	call test(ibclr(input(i),6),input(i),6)
	call test(ibclr(input(i),7),input(i),7)
	call test(ibclr(input(i),8),input(i),8)
	call test(ibclr(input(i),9),input(i),9)
	call test(ibclr(input(i),10),input(i),10)
	call test(ibclr(input(i),11),input(i),11)
	call test(ibclr(input(i),12),input(i),12)
	call test(ibclr(input(i),13),input(i),13)
	call test(ibclr(input(i),14),input(i),14)
	call test(ibclr(input(i),15),input(i),15)
	call test(ibclr(input(i),16),input(i),16)
	call test(ibclr(input(i),17),input(i),17)
	call test(ibclr(input(i),18),input(i),18)
	call test(ibclr(input(i),19),input(i),19)
	call test(ibclr(input(i),20),input(i),20)
	call test(ibclr(input(i),21),input(i),21)
	call test(ibclr(input(i),22),input(i),22)
	call test(ibclr(input(i),23),input(i),23)
	call test(ibclr(input(i),24),input(i),24)
	call test(ibclr(input(i),25),input(i),25)
	call test(ibclr(input(i),26),input(i),26)
	call test(ibclr(input(i),27),input(i),27)
	call test(ibclr(input(i),28),input(i),28)
	call test(ibclr(input(i),29),input(i),29)
	call test(ibclr(input(i),30),input(i),30)
	call test(ibclr(input(i),31),input(i),31)
	end do
	print *,'PASS'
	end
	subroutine test(j1,i,ip)
	j2 = ibclr(i,ip)
	if( j1 .ne. j2 ) then
	 stop 'NG'
	endif
	end
