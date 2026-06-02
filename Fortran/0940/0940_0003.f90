 module m1
 INTERFACE assignment(=)
 subroutine asn(a,b)
 class(*), allocatable, intent(inout) :: a(:)
 integer, intent(in) :: b(:)
 END
 END INTERFACE
 type ty
 integer :: ii = 2
 end type
 type,extends(ty) :: tty
 integer :: jj = 3
 end type
 end module
 
 use m1
 class(*), allocatable::pptr(:)
 integer ::pptr1(2)
 allocate(tty::pptr(2))
 pptr1 = 2
 pptr = pptr1
 print *, "pass"
 END
     
 subroutine asn(a,b)
 use m1
 class(*), allocatable, intent(inout) :: a(:)
 integer, intent(in) :: b(:)
 select type(a)
 type is(tty)
 if(any(b .ne. 2)) print*,"120"
 a%jj = a%jj + b
 if(any(a%jj .ne. 5))print*,"121"
 class default
 print*,"122"
 end select
 END
       

