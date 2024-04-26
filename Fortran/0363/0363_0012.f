      program main
      real(8)  a(65),b(65),c(65),res(65)
      integer(4) list(65)
      m = 3
      call init(a,b,c,list,res,65)
      do i=1,2
        call sub1(a,b,list,65,m)
        call sub2(a,c,list,65,m)
      enddo
      do i=1,65
         if(c(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,c,list,res,n1)
      real(8)  a(n1),b(n1),c(n1),res(n1)
      integer(4) list(n1)

      do i=1,65
         a(i) = 0
         b(i) = 0
         c(i) = 0
         list(i) = 0
         res(i) = 0
      enddo

      do i=1,65,3
         a(i) = i
         b(i) = i
         list(i) = i
         res(i) = a(list(i)) + 1
      enddo
      end

      subroutine sub1(a,b,list,n1,m)
      real(8) a(n1),b(n1)
      integer(4) list(n1)
      
      do i=1,65,m
         b(list(i)) = a(list(i)) + 1
      enddo
      
      end

      subroutine sub2(a,c,list,n1,m)
      real(8) a(n1),c(n1)
      integer(4) list(n1)
      
      do i=1,65,m
         c(list(i)) = a(list(i)) + 1
      enddo
      
      end
