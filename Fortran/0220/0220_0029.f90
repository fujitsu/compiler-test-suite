module mod01
  type :: ty_a
  end type ty_a
end module mod01

module mod02
   use mod01
   private
end module mod02

module mod03
  type :: ty_a
    integer::x1
    contains
      procedure :: prc
  end type
  contains
    subroutine prc(this)
      class(ty_a) :: this
    end subroutine prc
end module mod03

module mod04
  use mod02
  use mod03
  contains
    subroutine Init ()
      type(ty_a), pointer     :: list
      type(ty_a)   :: t
      t%x1=1
      if (t%x1/=1) print *,101
allocate(list)
    end
end
use mod04
call Init
print *,'pass'
end
