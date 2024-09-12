      program main
      real,dimension(10000,10000)::a
      integer n
      n = 1000
      do i=1,10000
        do j=1,10000
          a(i,j) = i + j
        enddo
      enddo

      s = 0.0
      call sub2(n,a,s)
      print*, s
      end

      subroutine sub2(n,a,s)
      real,dimension(10000,10000)::a
      real s
      integer n

      do j=1,n
        do i=1,n
          s=max(s,a(i,j))
        enddo
      enddo
      return
      end
