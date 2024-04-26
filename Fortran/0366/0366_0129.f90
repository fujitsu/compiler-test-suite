	program main
	call test1(100)
	end
	subroutine test1(n)
	dimension a(100)
	do i=1,n
	  call alt(i-1,*1,*2,*3)
1	  a(i) = 1
          goto 4
2	  a(i) = 2
          goto 4
3	  a(i) = 3
4         continue
	end do
	print *,a
	end
!
	subroutine alt(i,*,*,*)
	return mod(i,3)+1
	end
