module mod
  type, abstract :: base
   contains
     procedure(i_get_name), deferred :: get_name
  end type base

  type, extends(base) :: ext
     character(4)::name
   contains
     procedure :: get_name
  end type ext

  type wrap
     class(base),allocatable::item
  end type wrap

  abstract interface
     function i_get_name(this) result(name)
       import base
       character(:), pointer :: name
       class(base), target, intent(in) :: this
     end function i_get_name
  end interface

contains

  subroutine s1(this, value)
    class(wrap), intent(inout) :: this
    class(base), intent(in) :: value
    character(4) :: name
    allocate(this%item, source=value)
    !print '(z16.16)',loc(this%item)
    !print '(z16.16)',loc(value)
    !print *, this%item%get_name()
    !print *, value%get_name()
    name=     this%item%get_name()
    write(2,*)name
    name= value%get_name()
    write(2,*)name
  end subroutine s1

  function get_name(this) result(name)
    character(:), pointer :: name
    class(ext), target, intent(in) :: this
    !print '(z16.16)',loc(this%name)
    write(1, '(z16.16)')loc(this%name)
    name=>this%name
  end function get_name
end module mod

use mod
type(wrap),allocatable :: var
type(ext),allocatable ::value
allocate(value)
value%name='test'
allocate(var)
call s1(var, value)
call chk
print *,'sngg179k : pass'
end program
subroutine chk
character(16)::z,w
rewind 1
read(1,'(a)') z
read(1,'(a)') w
if (z==w)print *,1001
rewind 2
read(2,'(a)') z(:5)
read(2,'(a)') w(:5)
if (z(:5)/=w(:5))print *,1003
end

