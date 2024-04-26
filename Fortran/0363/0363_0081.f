      program main
      integer(4) a(65),b(65),c(65),d(65),list(65),res(65)
      call init(a,b,c,d,list,res,65)
      do i=1,2
        call test(a,b,c,d,list,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,c,d,list,res,n1)
      integer(4)  a(n1),b(n1),c(n1),d(n1),list(n1),res(n1)

      do i=1,65
         a(i) = 0
         b(i) = 1
         c(i) = i
         d(i) = i
         list(i) = n1/2
         if (i .eq. n1/2) then
            res(i) = (n1/2) + 1
         else
            res(i) = 0
         endif
      enddo
      end

      subroutine test(a,b,c,d,list,n1)
      integer(4) a(n1),b(n1),c(n1),d(n1),list(n1)
      
      do i=1,65
         if (d(i) .gt. n1/2) then
            a(list(i)) = b(i) + c(list(i))
         endif
      enddo
      
      end
