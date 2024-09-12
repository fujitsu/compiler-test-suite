       program main
       parameter (is=20)
       real  a(is,is,is), b(is,is,is), c(is,is,is)
       do ii=1,100
         call init()
         call sub1(a, b, c, is)
         call sub2(a, b, c, is)
       end do
       write(6, *) (a(1,1,i), i=1,is)
       stop
       contains
         subroutine init()

         c = 0
         do i=1, is
           do j=1, is
             do k=1, is
               a(k,j,i)= i
               b(k,j,i)= i * 2
             end do
           end do
         end do
         return
         end subroutine init
       end
       subroutine sub1(a, b, c, is)
       integer is
       real a(is,is,is), b(is,is,is), c(is,is,is)

       a=a * c
       b=b - c
       c = a + b / 2
       return
       end
       subroutine sub2(a, b, c, is)
       integer is
       real a(is,is,is), b(is,is,is), c(is,is,is)

       a=a * c
       b=b - c
       c = a + b / 2
       return
       end
