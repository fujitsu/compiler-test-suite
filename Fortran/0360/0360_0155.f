      integer*8 a(10),b(10),c(10),t/0/,tt/0/
      data a/10*0/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/

      t = 0
      call sub1()
      call sub2(10_8)
      call sub3(a,b,c,10_8,tt)
      end

      subroutine sub1()
      integer*8 i,t,tt/0/
      integer*8 a(10),b(10),c(10)
      data a/10*0/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         a(i) = i
      enddo
      write(6,*) a
      do i=1,10
         a(i) = b(i) - c(i)
      enddo
      write(6,*) a
      t = 0
      do i=1,10
         t = t + 1 
         a(i) = t + b(t)
      enddo
      write(6,*) a 
      do i=1,10
         a(i) = t + b(i) 
         t = t + 1
      enddo
      write(6,*) a
      
      do i=1,10
         a(i) = t + tt + i
         t = t + 1
         tt = tt - 4
      enddo
      write(6,*) a
      end

      subroutine sub2(n)
      integer*8 i,t,n,tt/0/
      integer*8 a(10),b(10),c(10)
      data a/10*0/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/

      do i=1,n
         a(i) = i
      enddo
      write(6,*) a
      do i=1,10
         a(i) = b(i) - c(i)
      enddo
      write(6,*) a
      t = 0
      do i=1,n
         t = t + 1 
         a(i) = t + b(t)
      enddo
      write(6,*) a 
      do i=1,n
         a(i) = t + b(i) 
         t = t + 1
      enddo
      write(6,*) a
      
      do i=1,n
         a(i) = t + tt + i
         t = t + 1
         tt = tt - 4
      enddo
      write(6,*) a
      end

      subroutine sub3(a,b,c,n,tt)
      integer*8 i,t,tt,n
      integer*8 a(10),b(10),c(10)

      do i=1,n
         a(i) = i
      enddo
      write(6,*) a
      do i=1,10
         a(i) = b(i) - c(i)
      enddo
      write(6,*) a
      t = 0
      do i=1,n
         t = t + 1 
         a(i) = t + b(t)
      enddo
      write(6,*) a 
      do i=1,n
         a(i) = t + b(i) 
         t = t + 1
      enddo
      write(6,*) a
      
      do i=1,n
         a(i) = t + tt + i
         t = t + 1
         tt = tt - 4
      enddo
      write(6,*) a
      end
