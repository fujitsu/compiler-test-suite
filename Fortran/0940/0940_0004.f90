 module m1
 INTERFACE assignment(=)
 subroutine asn(a,b)
 class(*), allocatable, intent(inout) :: a(:)
 class(*), intent(in) :: b(:)
 END
 END INTERFACE
 type ty
  integer :: ii = 2
 end type
 type,extends(ty) :: tty
  integer :: jj = 3
 end type
 type tty2
 class(*), allocatable::pptr(:)
 integer ::pptr1(2)
 end type
 end module

 use m1
 type(tty2) :: obj
 allocate(tty::obj%pptr(2))
 obj%pptr1=7
 obj%pptr =obj%pptr1
 print *, "pass"
 END

 subroutine asn(a,b)
 use m1
 class(*), allocatable, intent(inout) :: a(:)
 class(*), intent(in) :: b(:)
      
 select type(a)
 type is(tty)
 select type(b)
 type is(integer)
 a%jj = a%jj + b
 if(any(a%jj .ne. 10))print*,"120"
 class default
  print*,"121"
 end select
 class default
 print*,"122"
 end select
 END
       

