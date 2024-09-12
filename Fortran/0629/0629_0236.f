         call sub
         end
         subroutine sub
         real a(1000000),b(100000)
         do i=1,1000000
           a(i) = i
         end do
         do i=1,100000
           b(i) = i
         end do
         print *,a(3),b(4)
         end subroutine
         subroutine sub1
         end subroutine sub1
         subroutine sub2
         real a(100),b(100)
         do i=1,100
           a(i) = i
         end do
         do i=1,100
           b(i) = i
         end do
         print *,a(1),b(2)
         end subroutine sub2
