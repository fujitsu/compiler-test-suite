	subroutine test2(a,b,n)
	real*8 a(n),b(n)
        do i=1,n
	b(i)=dnint(a(i))
	end do
	end
	subroutine test1(a,b,n,anint)
	external anint
	real*8 anint
	real*8 a(n),b(n)
        do i=1,n
	b(i)=anint(a(i))
	end do
	end
!
	integer,parameter::n=10000
	intrinsic dnint
	real*8 a(n),b(n),c(n),dnint
	r = -(n/2);
	do i=1,n
	a(i) = r
	r=r+0.1;
	end do
	call system_clock(i1)
	do i=1,100
	call test1(a,c,n,dnint)
	end do
	call system_clock(i2)
	do i=1,100
	call test2(a,b,n)
	end do
	call system_clock(i3)
	i21 = i2-i1
	i32 = i3-i2
	if( real(i32-i21)/real(i21) > 0.2 ) then
	print *,'too slow'
	print *,'system function',i21
	print *,'user   function',i32
	endif
	if (all(b==c)) then
	  print *,'OK'
	else
	  print *,'NG'
	endif
	end
