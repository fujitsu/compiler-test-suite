     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          class(base),allocatable::next
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext), allocatable,target :: value
     type(ext), pointer     :: p
     integer(8)::k1,k2,k3,k4,k5,k6
     allocate(value)
     allocate(value%name,source='11')
     k2=              loc(value%name)
     p=>value
     allocate(ext::p%next)
     select type(x=>p    %next)
      type is(ext)
       p=>  x
       allocate(p%name,source='22')
       k4=              loc(p%name)
     end select

     print *,'sngg229p : pass'
     end program

