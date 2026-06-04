module mod
  implicit none
  type :: base
  end type

  type, extends(base) :: ext
    real(8) :: s1
  end type

 type :: struct_ty
    integer(8)::dummy(2)
    integer,allocatable::x1(:)
    class(base), allocatable :: param(:)
 end type
 type(struct_ty)::t
contains
subroutine s1()
real(8)::ddd=1.0D0
t%param = [ext(ddd),ext(ddd)]
end subroutine
end

program main
use mod
allocate(t%x1(3),source=[1,2,3])
call s1()
if (any(t%x1/=[1,2,3])) print *,'error-1'
select type(p=>t%param)
 type is(ext)
 class default
    print *,'error-2'
end select


print *,'sngg442r : pass'
end program
