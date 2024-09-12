      program main
      real,dimension(10000,10000)::a
      real s
      integer n
      s = 0.0
      n = 500
      a = 1.0
      call sub(n,a,s)
      print*, s
      end

      subroutine sub(n,a,s)
      real,dimension(10000,10000)::a
      do j=1,n
        do i=1,n
           s=s+a(i,j)
        enddo
      enddo
      return
      end
