	subroutine sub1(a,b,n)
	dimension a(n),b(n)
	call sub(a+b,n)
	end
	subroutine sub(c,n)
	dimension c(n)
	do i=1,10
	  if( c(i) /= 1 ) c(i) = 1
	end do
        c=2
	end
	dimension a(10),b(10)
        data a/1,2,3,4,5,6,7,8, 9,10/
        data b/2,3,4,5,6,7,8,9,10,11/
	call sub1(a,b,10)
        write(6,*) '*** ok ***'
	end
