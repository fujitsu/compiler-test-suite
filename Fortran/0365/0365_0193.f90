	program main
	integer*1 a(2,2,2,2,2,2,2)
	integer*2 s
	common/com/s
	s=0
	a=0
	call test0(a); print *,s
	call test1(a); print *,s
	call test2(a); print *,s
	call test3(a); print *,s
	call test4(a); print *,s
	call test5(a); print *,s
	call test6(a); print *,s
	call test7(a); print *,s
	print *,a(1,1,1,1,1,1,1)
	print *,a(2,2,2,2,2,2,2)
	end
	subroutine test0(a)
	integer*1 a(2,2,2,2,2,2,2)
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; end do; end do; end do; end do
	end
	subroutine test1(a)
	integer*1 a(2,2,2,2,2,2,2)
	integer*2 s
	common/com/s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; end do; end do; end do; call x(s); end do
	end
	subroutine test2(a)
	integer*1 a(2,2,2,2,2,2,2)
	integer*2 s
	common/com/s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; end do; end do; call x(s); end do; end do
	end
	subroutine test3(a)
	integer*1 a(2,2,2,2,2,2,2)
	common/com/s
	integer*2 s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; end do; call x(s); end do; end do; end do
	end
	subroutine test4(a)
	integer*1 a(2,2,2,2,2,2,2)
	common/com/s
	integer*2 s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; end do; call x(s); end do; end do; end do; end do
	end
	subroutine test5(a)
	integer*1 a(2,2,2,2,2,2,2)
	common/com/s
	integer*2 s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; end do; call x(s); end do; end do; end do; end do; end do
	end
	subroutine test6(a)
	integer*1 a(2,2,2,2,2,2,2)
	common/com/s
	integer*2 s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	end do; call x(s); end do; end do; end do; end do; end do; end do
	end
	subroutine test7(a)
	integer*1 a(2,2,2,2,2,2,2)
	common/com/s
	integer*2 s
	integer h
	do h=1,2;do i=1,2;do j=1,2;do k=1,2;do l=1,2 ;do m=1,2;do n=1,2
	  a(n,m,l,k,j,i,h) = a(n,m,l,k,j,i,h) + 1
	  call x(s)
	end do; end do; end do; end do; end do; end do; end do
	end
	subroutine x(s)
        integer*2 s
	s=s+1
	end
