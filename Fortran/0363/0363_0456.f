      program main
      integer(4) a(65,65),b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
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
      integer(4)  a(n1,n1),b(n1),res(n1)

      do i=1,65
         do j=1,65
            if (i .gt. n1/2) then
               a(j,i) = -i
               b(i) = i
               res(i) = -(n1*2) * i + i
            else
               a(j,i) = i
               b(i) = i
               res(i) = (n1*2) * i + i
            endif
         enddo
      enddo
      end

      subroutine test(a,b,n1)
      integer(4) a(n1,n1),b(n1)
      
      do i=1,65
        do j=1,65
          b(i) = b(i) + a(j,i)
        enddo
      enddo
      
      end
