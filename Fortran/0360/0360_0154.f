      integer*8 a(10),b(10),c(10),nn/0/
      data a/10*2/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/
      
      call sub1()
      call sub2(10)
      call sub3(a,b,c,10,nn)
      end

      subroutine sub1()
      integer*8 i,nn
      integer*8 a(10),b(10),c(10)
      data a/10*2/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/

      nn = 0
      do i=1,10
         nn = nn + b(i) + c(i)
      enddo
      write(6,*) nn
      nn = 0
      do i=1,10
         nn = nn - b(i) - c(i)
      enddo
      write(6,*) nn
      nn = 0
      do i=1,10
         nn = nn + b(i) * c(i)
      enddo
      write(6,*) nn
      nn = 0
      do i=1,10
         nn = nn + b(i) * c(i) + a(i)
      enddo
      write(6,*) nn
      end

      subroutine sub2(n)
      integer*8 i,nn
      integer*8 a(10),b(10),c(10)
      data a/10*2/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/

      nn = 0
      do i=1,n
         nn = nn + b(i) + c(i)
      enddo
      write(6,*) nn
      nn = 0
      do i=1,n
         nn = nn - b(i) - c(i)
      enddo
      write(6,*) nn
      nn = 0
      do i=1,n
         nn = nn + b(i) * c(i)
      enddo
      write(6,*) nn
      nn = 0
      do i=1,n
         nn = nn + b(i) * c(i) + a(i)
      enddo
      write(6,*) nn
      end

      subroutine sub3(a,b,c,n,nn)
      integer*8 i,nn
      integer*8 a(n),b(n),c(n)

      nn = 0
      do i=1,n
         nn = nn + b(i) + c(i)
      enddo
      write(6,*) nn
      nn = 0
      do i=1,n
         nn = nn - b(i) - c(i)
      enddo
      write(6,*) nn
      nn = 0
      do i=1,n
         nn = nn + b(i) * c(i)
      enddo
      write(6,*) nn
      nn = 0
      do i=1,n
         nn = nn + b(i) * c(i) + a(i)
      enddo
      write(6,*) nn
      end
