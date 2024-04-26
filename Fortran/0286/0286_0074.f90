	program main
	intrinsic ibset
	integer input(10)
	data input/ z'ffffffff', z'ffff0000' , z'fffffffe' ,   &
                    z'7fffffff', z'0000ffff' , z'00007fff' ,   &
                    z'00007fff', z'000000ff' , z'0000007f' ,   &
                    0 /
	do i=1,10
	call test(ibset(input(i),0),input(i),0)
	call test(ibset(input(i),1),input(i),1)
	call test(ibset(input(i),2),input(i),2)
	call test(ibset(input(i),3),input(i),3)
	call test(ibset(input(i),4),input(i),4)
	call test(ibset(input(i),5),input(i),5)
	call test(ibset(input(i),6),input(i),6)
	call test(ibset(input(i),7),input(i),7)
	call test(ibset(input(i),8),input(i),8)
	call test(ibset(input(i),9),input(i),9)
	call test(ibset(input(i),10),input(i),10)
	call test(ibset(input(i),11),input(i),11)
	call test(ibset(input(i),12),input(i),12)
	call test(ibset(input(i),13),input(i),13)
	call test(ibset(input(i),14),input(i),14)
	call test(ibset(input(i),15),input(i),15)
	call test(ibset(input(i),16),input(i),16)
	call test(ibset(input(i),17),input(i),17)
	call test(ibset(input(i),18),input(i),18)
	call test(ibset(input(i),19),input(i),19)
	call test(ibset(input(i),20),input(i),20)
	call test(ibset(input(i),21),input(i),21)
	call test(ibset(input(i),22),input(i),22)
	call test(ibset(input(i),23),input(i),23)
	call test(ibset(input(i),24),input(i),24)
	call test(ibset(input(i),25),input(i),25)
	call test(ibset(input(i),26),input(i),26)
	call test(ibset(input(i),27),input(i),27)
	call test(ibset(input(i),28),input(i),28)
	call test(ibset(input(i),29),input(i),29)
	call test(ibset(input(i),30),input(i),30)
	call test(ibset(input(i),31),input(i),31)
	end do
	print *,'PASS'
	end
	subroutine test(j1,i,ip)
	j2 = ibset(i,ip)
	if( j1 .ne. j2 ) then
	 stop 'NG'
	endif
	end
