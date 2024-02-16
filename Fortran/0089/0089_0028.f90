module m0
  type :: ty_1
    integer::y=30
  end type ty_1
  integer::z=1
end module 

module m1
  type :: ty_1
    integer::y=3
  end type ty_1
  integer::x=1
end module m1

module m2
   use m1
end module m2

module m3
  type :: ty_1
    integer::y=2
    contains
      procedure :: prc
  end type
  contains
    subroutine prc(this)
      class(ty_1) :: this
      if (this%y/=2) print *,1002
    end subroutine prc
end module m3

module m4
  contains
    subroutine m4_p()
  use m0,only:z
  use m2,only:x
  use m3,only:ty_1
      type(ty_1)    :: list
      call list%prc()
    end
end
  use m0,only:z
  use m2,only:x
  use m3,only:ty_1
  use m4,only:m4_p
      type(ty_1)  :: list2
if (x      /=1) print *,1201
if (list2%y/=2) print *,1001
call list2%prc()
call m4_p()
print *,'pass'
end
