	subroutine test1(a)
	common/ma/mask
	logical  mask(1000)
	common/com/s,r,b
	dimension a(1000)
	dimension b(1000)
	do i=1,1000
	 if( mask(i) ) a(i) = a(i) + 1.0
	 s=s+a(i)
	 if( mask(i) ) b(i) = b(i) + 1.0
	end do
	end 
!
	subroutine test2(a)
	common/ma/mask
	logical  mask(1000)
	common/com/s,r
	dimension a(1000)
	do i=1,1000
	 if( mask(i) ) s=s+a(i)
	 a(i) = a(i) + 1.0
	 if( mask(i) ) r=r+a(i)
	end do
	end 
!
	subroutine test3(a)
	common/ma/mask
	logical  mask(1000)
	common/com/s,r,b
	dimension a(1000)
	dimension b(1000)
	do i=1,1000
	 a(i) = a(i) + 1.0
	 if( mask(i) ) then 
	 s=s+a(i)
	 b(i) = b(i) + 1.0
	 endif
	end do
	end 
!
	subroutine test4(a)
	common/ma/mask
	logical  mask(1000)
	common/com/s,r
	dimension a(1000)
	do i=1,1000
	 s=s+a(i)
	 if( mask(i) ) then
	 a(i) = a(i) + 1.0
	 r=r+a(i)
	 endif
	end do
	end 
!
	subroutine test5(a)
	common/ma/mask
	logical  mask(1000)
	common/com/s,r,b
	dimension a(1000)
	dimension b(1000)
	do i=1,1000
	 if( mask(i) ) then
	 a(i) = a(i) + 1.0
	 s=s+a(i)
	 endif
	 b(i) = b(i) + 1.0
	end do
	end 
!
	subroutine test6(a)
	common/ma/mask
	logical  mask(1000)
	common/com/s,r
	dimension a(1000)
	do i=1,1000
	 if( mask(i) ) then
	 s=s+a(i)
	 a(i) = a(i) + 1.0
	 endif
	 r=r+a(i)
	end do
	end 
!
	program main
	common/ma/mask
	logical  mask(1000)
	common/com/s,r,b
	dimension a(1000)
	dimension b(1000)
	a=1
	b=2
        s=0
        r=0
	mask=.true.
	call test1(a)
	print *,s,r,a(1),a(1000),b(1),b(1000)
	call test2(a)
	print *,s,r,a(1),a(1000),b(1),b(1000)
	call test3(a)
	print *,s,r,a(1),a(1000),b(1),b(1000)
	call test4(a)
	print *,s,r,a(1),a(1000),b(1),b(1000)
	call test5(a)
	print *,s,r,a(1),a(1000),b(1),b(1000)
	call test6(a)
	print *,s,r,a(1),a(1000),b(1),b(1000)
	end
