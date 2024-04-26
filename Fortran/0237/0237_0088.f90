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
    type(ptyp),pointer::p2s
    type(ptyp),pointer::p2a(:)
    type(ptyp)        ::x2a(2)
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
   y=c_loc(zps%x1)
   if (.not.c_associated(y)) print *,101
   y=c_loc(zps%p1s)
   if (.not.c_associated(y)) print *,102
   y=c_loc(zps%p1a)
   if (.not.c_associated(y)) print *,103
   y=c_loc(zps%p1a(2))
   if (.not.c_associated(y)) print *,104
   y=c_loc(zps%x1a)
   if (.not.c_associated(y)) print *,105
   y=c_loc(zps%x1a(2))
   if (.not.c_associated(y)) print *,106
   y=c_loc(zpa(2)%p1s)
   if (.not.c_associated(y)) print *,112
   y=c_loc(zpa(2)%p1a)
   if (.not.c_associated(y)) print *,113
   y=c_loc(zpa(2)%p1a(2))
   if (.not.c_associated(y)) print *,114
   y=c_loc(zpa(2)%x1a)
   if (.not.c_associated(y)) print *,115
   y=c_loc(zxa(2)%p1s)
   if (.not.c_associated(y)) print *,122
   y=c_loc(zxa(2)%p1a)
   if (.not.c_associated(y)) print *,123
   y=c_loc(zxa(2)%p1a(2))
   if (.not.c_associated(y)) print *,124
   y=c_loc(zwa(1)%x1)
   if (.not.c_associated(y)) print *,131
   y=c_loc(zwa(2)%p1s)
   if (.not.c_associated(y)) print *,132
   y=c_loc(zwa(2)%p1a)
   if (.not.c_associated(y)) print *,133
   y=c_loc(zwa(2)%p1a(2))
   if (.not.c_associated(y)) print *,134
   y=c_loc(zwa(2)%x1a)
   if (.not.c_associated(y)) print *,135
   y=c_loc(zwa(2)%x1a(2))
   if (.not.c_associated(y)) print *,136
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
    allocate(yps%p2s)
    allocate(yps%p2s%p1s)
    allocate(yps%p2s%p1a(2))
    allocate(yps%p2a(2))
    allocate(yps%p2a(1)%p1s)
    allocate(yps%p2a(2)%p1s)
    allocate(yps%p2a(1)%p1a(2))
    allocate(yps%p2a(2)%p1a(2))
    allocate(yps%x2a(1)%p1s)
    allocate(yps%x2a(2)%p1s)
    allocate(yps%x2a(1)%p1a(2))
    allocate(yps%x2a(2)%p1a(2))
    allocate(ypa(2))
    allocate(ypa(1)%p2s)
    allocate(ypa(1)%p2s%p1s)
    allocate(ypa(1)%p2s%p1a(2))
    allocate(ypa(1)%p2a(2))
    allocate(ypa(1)%p2a(1)%p1s)
    allocate(ypa(1)%p2a(2)%p1s)
    allocate(ypa(1)%p2a(1)%p1a(2))
    allocate(ypa(1)%p2a(2)%p1a(2))
    allocate(ypa(1)%x2a(1)%p1s)
    allocate(ypa(1)%x2a(2)%p1s)
    allocate(ypa(1)%x2a(1)%p1a(2))
    allocate(ypa(1)%x2a(2)%p1a(2))
    allocate(ypa(1)%p2a(1)%p1a(2))
    allocate(ypa(1)%p2a(2)%p1a(2))
    allocate(ypa(1)%x2a(1)%p1s)
    allocate(ypa(1)%x2a(2)%p1s)
    allocate(ypa(1)%x2a(1)%p1a(2))
    allocate(ypa(1)%x2a(2)%p1a(2))
    allocate(ypa(2)%p2s)
    allocate(ypa(2)%p2s%p1s)
    allocate(ypa(2)%p2s%p1a(2))
    allocate(ypa(2)%p2a(2))
    allocate(ypa(2)%p2a(1)%p1s)
    allocate(ypa(2)%p2a(2)%p1s)
    allocate(ypa(2)%p2a(1)%p1a(2))
    allocate(ypa(2)%p2a(2)%p1a(2))
    allocate(ypa(2)%x2a(1)%p1s)
    allocate(ypa(2)%x2a(2)%p1s)
    allocate(ypa(2)%x2a(1)%p1a(2))
    allocate(ypa(2)%x2a(2)%p1a(2))
    allocate(ypa(2)%p2a(1)%p1a(2))
    allocate(ypa(2)%p2a(2)%p1a(2))
    allocate(ypa(2)%x2a(1)%p1s)
    allocate(ypa(2)%x2a(2)%p1s)
    allocate(ypa(2)%x2a(1)%p1a(2))
    allocate(ypa(2)%x2a(2)%p1a(2))
    allocate(yxa(1)%p2s)
    allocate(yxa(1)%p2s%p1s)
    allocate(yxa(1)%p2s%p1a(2))
    allocate(yxa(1)%p2a(2))
    allocate(yxa(1)%p2a(1)%p1s)
    allocate(yxa(1)%p2a(2)%p1s)
    allocate(yxa(1)%p2a(1)%p1a(2))
    allocate(yxa(1)%p2a(2)%p1a(2))
    allocate(yxa(1)%x2a(1)%p1s)
    allocate(yxa(1)%x2a(2)%p1s)
    allocate(yxa(1)%x2a(1)%p1a(2))
    allocate(yxa(1)%x2a(2)%p1a(2))
    allocate(yxa(1)%p2a(1)%p1a(2))
    allocate(yxa(1)%p2a(2)%p1a(2))
    allocate(yxa(1)%x2a(1)%p1s)
    allocate(yxa(1)%x2a(2)%p1s)
    allocate(yxa(1)%x2a(1)%p1a(2))
    allocate(yxa(1)%x2a(2)%p1a(2))
    allocate(yxa(2)%p2s)
    allocate(yxa(2)%p2s%p1s)
    allocate(yxa(2)%p2s%p1a(2))
    allocate(yxa(2)%p2a(2))
    allocate(yxa(2)%p2a(1)%p1s)
    allocate(yxa(2)%p2a(2)%p1s)
    allocate(yxa(2)%p2a(1)%p1a(2))
    allocate(yxa(2)%p2a(2)%p1a(2))
    allocate(yxa(2)%x2a(1)%p1s)
    allocate(yxa(2)%x2a(2)%p1s)
    allocate(yxa(2)%x2a(1)%p1a(2))
    allocate(yxa(2)%x2a(2)%p1a(2))
    allocate(yxa(2)%p2a(1)%p1a(2))
    allocate(yxa(2)%p2a(2)%p1a(2))
    allocate(yxa(2)%x2a(1)%p1s)
    allocate(yxa(2)%x2a(2)%p1s)
    allocate(yxa(2)%x2a(1)%p1a(2))
    allocate(yxa(2)%x2a(2)%p1a(2))
    allocate(ywa(1)%p2s)
    allocate(ywa(1)%p2s%p1s)
    allocate(ywa(1)%p2s%p1a(2))
    allocate(ywa(1)%p2a(2))
    allocate(ywa(1)%p2a(1)%p1s)
    allocate(ywa(1)%p2a(2)%p1s)
    allocate(ywa(1)%p2a(1)%p1a(2))
    allocate(ywa(1)%p2a(2)%p1a(2))
    allocate(ywa(1)%x2a(1)%p1s)
    allocate(ywa(1)%x2a(2)%p1s)
    allocate(ywa(1)%x2a(1)%p1a(2))
    allocate(ywa(1)%x2a(2)%p1a(2))
    allocate(ywa(1)%p2a(1)%p1a(2))
    allocate(ywa(1)%p2a(2)%p1a(2))
    allocate(ywa(1)%x2a(1)%p1s)
    allocate(ywa(1)%x2a(2)%p1s)
    allocate(ywa(1)%x2a(1)%p1a(2))
    allocate(ywa(1)%x2a(2)%p1a(2))
    allocate(ywa(2)%p2s)
    allocate(ywa(2)%p2s%p1s)
    allocate(ywa(2)%p2s%p1a(2))
    allocate(ywa(2)%p2a(2))
    allocate(ywa(2)%p2a(1)%p1s)
    allocate(ywa(2)%p2a(2)%p1s)
    allocate(ywa(2)%p2a(1)%p1a(2))
    allocate(ywa(2)%p2a(2)%p1a(2))
    allocate(ywa(2)%x2a(1)%p1s)
    allocate(ywa(2)%x2a(2)%p1s)
    allocate(ywa(2)%x2a(1)%p1a(2))
    allocate(ywa(2)%x2a(2)%p1a(2))
    allocate(ywa(2)%p2a(1)%p1a(2))
    allocate(ywa(2)%p2a(2)%p1a(2))
    allocate(ywa(2)%x2a(1)%p1s)
    allocate(ywa(2)%x2a(2)%p1s)
    allocate(ywa(2)%x2a(1)%p1a(2))
    allocate(ywa(2)%x2a(2)%p1a(2))
    end subroutine
  end subroutine
end
use m1
call s1
print *,'pass'
end

