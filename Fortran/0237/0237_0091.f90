module  m1
  USE,intrinsic:: iso_c_binding
  implicit none
  private
  public:: ptyp,s1
  type ptyp
    sequence 
    integer(c_int)::x1
    integer(c_int),pointer::p1s
    integer(c_int),pointer::p1a(:)
    integer(c_int)::x1a(2)
  end type
  type ptyp2
    integer(c_int)::x2
    type(ptyp),pointer::zps
    type(ptyp),pointer::zpa(:)
    type(ptyp)        ::zxa(2)
  end type
  contains
  subroutine s1
   type(c_ptr):: y
   type(ptyp),pointer::zps
   type(ptyp),pointer::zpa(:)
   type(ptyp)        ::zxa(2)
   type(ptyp),target ::zwa(2)
   type(ptyp2),pointer::yps
   type(ptyp2),pointer::ypa(:)
   type(ptyp2)        ::yxa(2)
   type(ptyp2),target ::ywa(2)
   call set
   y=c_loc(ywa(2)%zps%x1)
   if (.not.c_associated(y)) print *,101
   y=c_loc(ywa(2)%zps%p1s)
   if (.not.c_associated(y)) print *,102
   y=c_loc(ywa(2)%zps%p1a)
   if (.not.c_associated(y)) print *,103
   y=c_loc(ywa(2)%zps%p1a(2))
   if (.not.c_associated(y)) print *,104
   y=c_loc(ywa(2)%zps%x1a)
   if (.not.c_associated(y)) print *,105
   y=c_loc(ywa(2)%zps%x1a(2))
   if (.not.c_associated(y)) print *,106
   y=c_loc(ywa(2)%zpa(2)%p1s)
   if (.not.c_associated(y)) print *,112
   y=c_loc(ywa(2)%zpa(2)%p1a)
   if (.not.c_associated(y)) print *,113
   y=c_loc(ywa(2)%zpa(2)%p1a(2))
   if (.not.c_associated(y)) print *,114
   y=c_loc(ywa(2)%zpa(2)%x1a)
   if (.not.c_associated(y)) print *,115
   y=c_loc(ywa(2)%zxa(2)%p1s)
   if (.not.c_associated(y)) print *,122
   y=c_loc(ywa(2)%zxa(2)%p1a)
   if (.not.c_associated(y)) print *,123
   y=c_loc(ywa(2)%zxa(2)%p1a(2))
   if (.not.c_associated(y)) print *,124
   y=c_loc(ywa(2)%zxa(2)%x1a)
   if (.not.c_associated(y)) print *,125
   y=c_loc(ywa(2)%zxa(2)%x1a(2))
   if (.not.c_associated(y)) print *,126
  contains
    subroutine set
    allocate(zps)
    allocate(zps%p1s)
    allocate(zps%p1a(2))
    allocate(zpa(2))
    allocate(zpa(1)%p1s)
    allocate(zpa(2)%p1s)
    allocate(zpa(1)%p1a(2))
    allocate(zpa(2)%p1a(2))
    allocate(zxa(1)%p1s)
    allocate(zxa(2)%p1s)
    allocate(zxa(1)%p1a(2))
    allocate(zxa(2)%p1a(2))
    allocate(zwa(1)%p1s)
    allocate(zwa(2)%p1s)
    allocate(zwa(1)%p1a(2))
    allocate(zwa(2)%p1a(2))
    allocate(yps)
    allocate(yps%zps)
    allocate(yps%zps%p1s)
    allocate(yps%zps%p1a(2))
    allocate(yps%zpa(2))
    allocate(yps%zpa(1)%p1s)
    allocate(yps%zpa(2)%p1s)
    allocate(yps%zpa(1)%p1a(2))
    allocate(yps%zpa(2)%p1a(2))
    allocate(yps%zxa(1)%p1s)
    allocate(yps%zxa(2)%p1s)
    allocate(yps%zxa(1)%p1a(2))
    allocate(yps%zxa(2)%p1a(2))
    allocate(ypa(2))
    allocate(ypa(1)%zps)
    allocate(ypa(1)%zps%p1s)
    allocate(ypa(1)%zps%p1a(2))
    allocate(ypa(1)%zpa(2))
    allocate(ypa(1)%zpa(1)%p1s)
    allocate(ypa(1)%zpa(2)%p1s)
    allocate(ypa(1)%zpa(1)%p1a(2))
    allocate(ypa(1)%zpa(2)%p1a(2))
    allocate(ypa(1)%zxa(1)%p1s)
    allocate(ypa(1)%zxa(2)%p1s)
    allocate(ypa(1)%zxa(1)%p1a(2))
    allocate(ypa(1)%zxa(2)%p1a(2))
    allocate(ypa(1)%zpa(1)%p1a(2))
    allocate(ypa(1)%zpa(2)%p1a(2))
    allocate(ypa(1)%zxa(1)%p1s)
    allocate(ypa(1)%zxa(2)%p1s)
    allocate(ypa(1)%zxa(1)%p1a(2))
    allocate(ypa(1)%zxa(2)%p1a(2))
    allocate(ypa(2)%zps)
    allocate(ypa(2)%zps%p1s)
    allocate(ypa(2)%zps%p1a(2))
    allocate(ypa(2)%zpa(2))
    allocate(ypa(2)%zpa(1)%p1s)
    allocate(ypa(2)%zpa(2)%p1s)
    allocate(ypa(2)%zpa(1)%p1a(2))
    allocate(ypa(2)%zpa(2)%p1a(2))
    allocate(ypa(2)%zxa(1)%p1s)
    allocate(ypa(2)%zxa(2)%p1s)
    allocate(ypa(2)%zxa(1)%p1a(2))
    allocate(ypa(2)%zxa(2)%p1a(2))
    allocate(ypa(2)%zpa(1)%p1a(2))
    allocate(ypa(2)%zpa(2)%p1a(2))
    allocate(ypa(2)%zxa(1)%p1s)
    allocate(ypa(2)%zxa(2)%p1s)
    allocate(ypa(2)%zxa(1)%p1a(2))
    allocate(ypa(2)%zxa(2)%p1a(2))
    allocate(yxa(1)%zps)
    allocate(yxa(1)%zps%p1s)
    allocate(yxa(1)%zps%p1a(2))
    allocate(yxa(1)%zpa(2))
    allocate(yxa(1)%zpa(1)%p1s)
    allocate(yxa(1)%zpa(2)%p1s)
    allocate(yxa(1)%zpa(1)%p1a(2))
    allocate(yxa(1)%zpa(2)%p1a(2))
    allocate(yxa(1)%zxa(1)%p1s)
    allocate(yxa(1)%zxa(2)%p1s)
    allocate(yxa(1)%zxa(1)%p1a(2))
    allocate(yxa(1)%zxa(2)%p1a(2))
    allocate(yxa(1)%zpa(1)%p1a(2))
    allocate(yxa(1)%zpa(2)%p1a(2))
    allocate(yxa(1)%zxa(1)%p1s)
    allocate(yxa(1)%zxa(2)%p1s)
    allocate(yxa(1)%zxa(1)%p1a(2))
    allocate(yxa(1)%zxa(2)%p1a(2))
    allocate(yxa(2)%zps)
    allocate(yxa(2)%zps%p1s)
    allocate(yxa(2)%zps%p1a(2))
    allocate(yxa(2)%zpa(2))
    allocate(yxa(2)%zpa(1)%p1s)
    allocate(yxa(2)%zpa(2)%p1s)
    allocate(yxa(2)%zpa(1)%p1a(2))
    allocate(yxa(2)%zpa(2)%p1a(2))
    allocate(yxa(2)%zxa(1)%p1s)
    allocate(yxa(2)%zxa(2)%p1s)
    allocate(yxa(2)%zxa(1)%p1a(2))
    allocate(yxa(2)%zxa(2)%p1a(2))
    allocate(yxa(2)%zpa(1)%p1a(2))
    allocate(yxa(2)%zpa(2)%p1a(2))
    allocate(yxa(2)%zxa(1)%p1s)
    allocate(yxa(2)%zxa(2)%p1s)
    allocate(yxa(2)%zxa(1)%p1a(2))
    allocate(yxa(2)%zxa(2)%p1a(2))
    allocate(ywa(1)%zps)
    allocate(ywa(1)%zps%p1s)
    allocate(ywa(1)%zps%p1a(2))
    allocate(ywa(1)%zpa(2))
    allocate(ywa(1)%zpa(1)%p1s)
    allocate(ywa(1)%zpa(2)%p1s)
    allocate(ywa(1)%zpa(1)%p1a(2))
    allocate(ywa(1)%zpa(2)%p1a(2))
    allocate(ywa(1)%zxa(1)%p1s)
    allocate(ywa(1)%zxa(2)%p1s)
    allocate(ywa(1)%zxa(1)%p1a(2))
    allocate(ywa(1)%zxa(2)%p1a(2))
    allocate(ywa(1)%zpa(1)%p1a(2))
    allocate(ywa(1)%zpa(2)%p1a(2))
    allocate(ywa(1)%zxa(1)%p1s)
    allocate(ywa(1)%zxa(2)%p1s)
    allocate(ywa(1)%zxa(1)%p1a(2))
    allocate(ywa(1)%zxa(2)%p1a(2))
    allocate(ywa(2)%zps)
    allocate(ywa(2)%zps%p1s)
    allocate(ywa(2)%zps%p1a(2))
    allocate(ywa(2)%zpa(2))
    allocate(ywa(2)%zpa(1)%p1s)
    allocate(ywa(2)%zpa(2)%p1s)
    allocate(ywa(2)%zpa(1)%p1a(2))
    allocate(ywa(2)%zpa(2)%p1a(2))
    allocate(ywa(2)%zxa(1)%p1s)
    allocate(ywa(2)%zxa(2)%p1s)
    allocate(ywa(2)%zxa(1)%p1a(2))
    allocate(ywa(2)%zxa(2)%p1a(2))
    allocate(ywa(2)%zpa(1)%p1a(2))
    allocate(ywa(2)%zpa(2)%p1a(2))
    allocate(ywa(2)%zxa(1)%p1s)
    allocate(ywa(2)%zxa(2)%p1s)
    allocate(ywa(2)%zxa(1)%p1a(2))
    allocate(ywa(2)%zxa(2)%p1a(2))
    end subroutine
  end subroutine
end
use m1
call s1
print *,'pass'
end

