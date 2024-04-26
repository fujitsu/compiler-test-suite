       module mod
       type t1
        integer,pointer::a(:)
       end type
       end module
       use mod
       type(t1) :: str
       allocate(str%a(10))
       do i=1,10
         str%a(i)=i
       end do
       print *,'pass'
       call sub2(str)
       end
       subroutine sub2(str)
       use mod
       type(t1), intent(out):: str

       call sub1(str)
       end
       subroutine sub1(str)
       use mod
       type(t1) :: str
       str%a(1) = 1
       str%a(3) = str%a(2)

       end
