      program main
      real(8) a(65),b(65),res(65)
      m = 2
      call init(a,b,res,65)
      do i=1,2
        call sub1(a,65,m)
        call sub2(b,65)
      enddo
      do i=1,65
         if(b(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,res,n1)
      real(8)  a(n1),b(n1),res(n1)

      do i=1,65
         a(i) = 0
         b(i) = 0
         res(i) = 0
      enddo

      do i=1,65,2
         a(i) = i
         b(i) = i
         res(i) = i + 2
      enddo
      end

      subroutine sub1(b,n1,m)
      real(8) b(n1)
      
      do i=1,65,m
         b(i) = b(i) + 1
      enddo
      
      end

      subroutine sub2(a,n1)
      real(8) a(n1)
      
      do i=1,65,2
         a(i) = a(i) + 1
      enddo
      
      end