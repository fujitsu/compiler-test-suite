      program main
      real,dimension(100,100)::a,b

      a = 1.1
      b = 2.2
      s = 3.3
      n = 100

      call sub(n,a,b,s)
      print*, a(1,1),a(10,10),a(100,100)
      end

      subroutine sub(n,a,b,s)
      real,dimension(100,100)::a,b

      do i=1,n
        do j=1,n
          a(i,j)=a(i,j)+b(i,j)
        enddo
      enddo
      do i=1,n
        do j=1,n
          a(i,j)=a(i,j)+s
        enddo
      enddo

      return
      end
