      subroutine sub2(a,b,c,d,s,l,m,n)
      real(kind=8)		   a,b,c,d,s
      integer(kind=4)		   l,m,n
      real(kind=8)		:: t1,t2,t3

      do i=l,m,n
	t1 = s  + a
	t2 = t1 + b
	t3 = t2 * c
	s  = t3 * d
      end do

      return
      end
      program main
      real(kind=8)	:: a,b,d,c,s

      a = 1.0; b = 2.0; c = 3.0; d = 4.0; s = 5.0
      call sub2(a,b,c,d,s,1,10,1)
      write(6,*) s

      stop
      end program main
