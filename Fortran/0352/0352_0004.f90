       program main
         implicit none
         complex*8 a(10),c(10)
         integer*4 i
         data a/10*-0.0/
         data c/10*0.0/

         call foo(a,c)

         do i=1,10
            if (c(i) .ne. 0.0) then
               write(6,*) c(i)
            endif
         enddo
         print *, "OK"
       end program main

       subroutine foo(a,c)
         complex*8 a(10),c(10)
         integer*4 i
         do i=1,10
            c(i)=sqrt(a(i))
         enddo
       end subroutine

