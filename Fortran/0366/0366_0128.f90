	program main
	call test1(100)
	end
	subroutine test1(n)
	dimension a(100)
	integer adr
	a=0
	assign 5 to adr
	do i=1,n
	  goto adr(1,2,3)
1	  a(i) = 1
          goto 4
2	  a(i) = 2
          goto 4
3	  a(i) = 3
4         continue
	end do
5       continue
	print *,sum(a)-sum(a)
	end
