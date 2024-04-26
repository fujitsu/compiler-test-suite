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
    contains
      procedure :: prc
  end type
  contains
    subroutine prc(this)
      class(ty_a) :: this
    end subroutine prc
end module mod03

module mod04
  contains
    subroutine Initialize (list)
  use mod02
  use mod03
      type(ty_a), pointer     :: list
      call list%prc()
    end
end
use mod04
  use mod02
  use mod03
      type(ty_a), pointer     :: list
allocate(list)
      call list%prc()
    call       Initialize (list)
print *,'pass'
end
