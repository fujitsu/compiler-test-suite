      real*8 a(10),b(10),c(10)
      data a/10*0/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/

      call sub1()
      call sub2(10)
      call sub3(a,b,c,10)
      end

      subroutine sub1()
      integer*8 i
      real*8 a(10),b(10),c(10)
      data a/10*0/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         a(i) = b(i) + c(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) = b(i) - c(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) = b(i) * c(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) = b(i) / c(i)
      enddo
      write(6,*) a
      end

      subroutine sub2(n)
      integer*8 i
      real*8 a(10),b(10),c(10)
      data a/10*0/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/

      do i=1,n
         a(i) = b(i) + c(i)
      enddo
      write(6,*) a
      do i=1,n
         a(i) = b(i) - c(i)
      enddo
      write(6,*) a
      do i=1,n
         a(i) = b(i) * c(i)
      enddo
      write(6,*) a
      do i=1,n
         a(i) = b(i) / c(i)
      enddo
      write(6,*) a
      end

      subroutine sub3(a,b,c,n)
      integer*8 i
      real*8 a(n),b(n),c(n)
      do i=1,n
         a(i) = b(i) + c(i)
      enddo
      write(6,*) a
      do i=1,n
         a(i) = b(i) - c(i)
      enddo
      write(6,*) a
      do i=1,n
         a(i) = b(i) * c(i)
      enddo
      write(6,*) a
      do i=1,n
         a(i) = b(i) / c(i)
      enddo
      write(6,*) a
      end
