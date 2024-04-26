	program main
	dimension a(2,2,2,2,2,2,2)
	a=0
	call test0(a)
	call test1(a)
	call test2(a)
	call test3(a)
	call test4(a)
	call test5(a)
	call test6(a)
	call test7(a)
	print *,a(1,1,1,1,1,1,1)
	print *,a(2,2,2,2,2,2,2)
	end
	subroutine test0(a)
	dimension a(2,2,2,2,2,2,2)
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; end do; end do; end do; end do
	end
	subroutine test1(a)
	dimension a(2,2,2,2,2,2,2)
	common/com/s
	integer h
        s=0
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; end do; end do; end do; s=s+1; end do
	end
	subroutine test2(a)
	dimension a(2,2,2,2,2,2,2)
	common/com/s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; end do; end do; s=s+1; end do; end do
	end
	subroutine test3(a)
	dimension a(2,2,2,2,2,2,2)
	common/com/s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; end do; s=s+1; end do; end do; end do
	end
	subroutine test4(a)
	dimension a(2,2,2,2,2,2,2)
	common/com/s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; s=s+1; end do; end do; end do; end do
	end
	subroutine test5(a)
	dimension a(2,2,2,2,2,2,2)
	common/com/s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; s=s+1; end do; end do; end do; end do; end do
	end
	subroutine test6(a)
	dimension a(2,2,2,2,2,2,2)
	common/com/s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; s=s+1; end do; end do; end do; end do; end do; end do
	end
	subroutine test7(a)
	dimension a(2,2,2,2,2,2,2)
	common/com/s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	  s=s+1
	end do; end do; end do; end do; end do; end do; end do
	end
