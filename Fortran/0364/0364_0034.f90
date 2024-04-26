module array_data
logical*1,   target,dimension(10)::l1
logical*4,   target,dimension(10)::l4
character*10,target,dimension(10)::ch
integer*1,   target,dimension(10)::i1
integer*2,   target,dimension(10)::i2
integer*4,   target,dimension(10)::i4
integer*8,   target,dimension(10)::i8
!
real*4,      target,dimension(10)::r4
real*8,      target,dimension(10)::r8
real*16,     target,dimension(10)::r16
!
complex*8 ,  target,dimension(10)::c8
complex*16,  target,dimension(10)::c16
complex*32,  target,dimension(10)::c32
end module array_data
!
module pointer_data
type l1p_t 
  logical*1,   pointer,dimension(:)::l1p
end type l1p_t
type l1p_tt 
  type (l1p_tt),pointer             ::l1p_next
  type (l1p_t)                     ::l1p
end type l1p_tt 
!
type l4p_t
  logical*4,   pointer,dimension(:)::l4p
end type l4p_t
type l4p_tt
  type (l4p_tt),pointer             ::l4p_next
  type (l4p_t)                     ::l4p
end type l4p_tt
!
type c1p_t
  character*10,pointer,dimension(:)::chp
end type c1p_t
type c1p_tt
  type (c1p_tt),pointer             ::chp_next
  type (c1p_t)                     ::chp
end type c1p_tt
!
type i1p_t
  integer*1,   pointer,dimension(:)::i1p
end type i1p_t
type i1p_tt
  type (i1p_tt),pointer             ::i1p_next
  type (i1p_t)                     ::i1p
end type i1p_tt
!
type i2p_t 
  integer*2,   pointer,dimension(:)::i2p
end type i2p_t
type i2p_tt 
  type (i2p_tt),pointer             ::i2p_next
  type (i2p_t)                     ::i2p
end type i2p_tt 
!
type i4p_t
  integer*4,   pointer,dimension(:)::i4p
end type i4p_t
type i4p_tt
  type (i4p_tt),pointer             ::i4p_next
  type (i4p_t)                     ::i4p
end type i4p_tt
!
type i8p_t
  integer*8,   pointer,dimension(:)::i8p 
end type i8p_t
type i8p_tt
  type (i8p_tt),pointer             ::i8p_next
  type (i8p_t)                     ::i8p
end type i8p_tt
!
type r4p_t
  real*4,      pointer,dimension(:)::r4p
end type r4p_t
type r4p_tt
  type (r4p_tt),pointer             ::r4p_next
  type (r4p_t)                     ::r4p
end type r4p_tt
!
type r8p_t
  real*8,      pointer,dimension(:)::r8p
end type r8p_t
type r8p_tt
  type (r8p_tt),pointer             ::r8p_next
  type (r8p_t)                     ::r8p
end type r8p_tt
!
type r16p_t
  real*16,      pointer,dimension(:)::r16p
end type r16p_t
type r16p_tt
  type (r16p_tt),pointer             ::r16p_next
  type (r16p_t)                     ::r16p
end type r16p_tt
!
type c8p_t
  complex*8 ,  pointer,dimension(:)::c8p 
end type c8p_t
type c8p_tt
  type (c8p_tt),pointer             ::c8p_next
  type (c8p_t)                     ::c8p
end type c8p_tt
!
type c16p_t
  complex*16,   pointer,dimension(:)::c16p
end type c16p_t
type c16p_tt
  type (c16p_tt),pointer             ::c16p_next
  type (c16p_t)                     ::c16p
end type c16p_tt
!
type c32p_t
  complex*32,   pointer,dimension(:)::c32p
end type c32p_t
type c32p_tt
  type (c32p_tt),pointer             ::c32p_next
  type (c32p_t)                     ::c32p
end type c32p_tt
!
type (l1p_tt),target::l1p(10)
type (l4p_tt),target::l4p(10)
!
type (c1p_tt),target::chp(10)
!
type (i1p_tt),target::i1p(10)
type (i2p_tt),target::i2p(10)
type (i4p_tt),target::i4p(10)
type (i8p_tt),target::i8p(10)
!
type (r4p_tt), target::r4p(10)
type (r8p_tt), target::r8p(10)
type (r16p_tt),target::r16p(10)
!
type (c8p_tt), target:: c8p(10)
type (c16p_tt),target:: c16p(10)
type (c32p_tt),target:: c32p(10)
end module pointer_data
!
subroutine sub_init
use array_data
l1 = .FALSE.; l4 = .FALSE.
ch = '0123456789'
do i=1,10
  i1(i) = i; i2 (i) = i; i4 (i) = i; i8 (i) = i
  r4(i) = i; r8 (i) = i; r16(i) = i;
  c8(i) = i; c16(i) = i; c32(i) = i
enddo
return
end subroutine sub_init
!
subroutine sub_associate
use array_data
use pointer_data
!
do i=1,10
  if (i==10) then
    if (.not.l1(i)) then
      l1 = .TRUE.
      l1p(i)%l1p%l1p => l1
    endif
    if (.not.l4(i)) then
      l4=.TRUE.
      l4p(i)%l4p%l4p => l4
    endif
    if (ch(i)=='0123456789') chp(i)%chp%chp  => ch
    if (i1(i)==i) i1p(i)%i1p%i1p  => i1
    if (i2(i)==i) i2p(i)%i2p%i2p  => i2
    if (i4(i)==i) i4p(i)%i4p%i4p  => i4
    if (i8(i)==i) i8p(i)%i8p%i8p  => i8 
    if (r4(i)==i) r4p(i)%r4p%r4p  => r4
    if (r8(i)==i) r8p(i)%r8p%r8p  => r8
    if (r16(i)==i) r16p(i)%r16p%r16p => r16
    if (c8(i)==i)  c8p(i)%c8p%c8p  => c8
    if (c16(i)==i) c16p(i)%c16p%c16p => c16
    if (c32(i)==i) c32p(i)%c32p%c32p => c32
  else
    l1p(i)%l1p_next  => l1p(i+1)
    l4p(i)%l4p_next  => l4p(i+1)
    chp(i)%chp_next  => chp(i+1)
    i1p(i)%i1p_next  => i1p(i+1)
    i2p(i)%i2p_next  => i2p(i+1)
    i4p(i)%i4p_next  => i4p(i+1)
    i8p(i)%i8p_next  => i8p(i+1)
    r4p (i)% r4p_next => r4p (i+1)
    r8p (i)% r8p_next => r8p (i+1)
    r16p(i)%r16p_next => r16p(i+1)
    c8p (i)% c8p_next => c8p (i+1)
    c16p(i)%c16p_next => c16p(i+1)
    c32p(i)%c32p_next => c32p(i+1)
  endif
enddo
return
end subroutine sub_associate
!
subroutine sub_print
use array_data
use pointer_data
type (l1p_tt),pointer::l1p_w
type (l4p_tt),pointer::l4p_w
!
type (c1p_tt),pointer::chp_w
!
type (i1p_tt),pointer::i1p_w
type (i2p_tt),pointer::i2p_w
type (i4p_tt),pointer::i4p_w
type (i8p_tt),pointer::i8p_w
!
type (r4p_tt), pointer::r4p_w
type (r8p_tt), pointer::r8p_w
type (r16p_tt),pointer::r16p_w
!
type (c8p_tt), pointer:: c8p_w
type (c16p_tt),pointer:: c16p_w
type (c32p_tt),pointer:: c32p_w
!
l1p_w=>l1p(1)
do i=1,9;   l1p_w=l1p_w%l1p_next ; enddo
print *,l1p_w%l1p%l1p
!
l4p_w=>l4p(1)
do i=1,9;   l4p_w=l4p_w%l4p_next ; enddo
print *,l4p_w%l4p%l4p(10)
!
chp_w=>chp(1)
do i=1,9;   chp_w=chp_w%chp_next ; enddo
print *,chp_w%chp%chp(10)
!
i1p_w=>i1p(1)
do i=1,9;   i1p_w=i1p_w%i1p_next ; enddo
print *,i1p_w%i1p%i1p(10)
!
i2p_w=>i2p(1)
do i=1,9;   i2p_w=i2p_w%i2p_next ; enddo
print *,i2p_w%i2p%i2p(10)
!
i4p_w=>i4p(1)
do i=1,9;   i4p_w=i4p_w%i4p_next ; enddo
print *,i4p_w%i4p%i4p(10)
!
i8p_w=>i8p(1)
do i=1,9;   i8p_w=i8p_w%i8p_next ; enddo
print *,i8p_w%i8p%i8p(10)
!
r4p_w=>r4p(1)
do i=1,9;   r4p_w=r4p_w%r4p_next ; enddo
print *,r4p_w%r4p%r4p(10)
!
r8p_w=>r8p(1)
do i=1,9;   r8p_w=r8p_w%r8p_next ; enddo
print *,r8p_w%r8p%r8p(10)
!
r16p_w=>r16p(1)
do i=1,9;   r16p_w=r16p_w%r16p_next ; enddo
print *,r16p_w%r16p%r16p(10)
!
c8p_w=>c8p(1)
do i=1,9;   c8p_w=c8p_w%c8p_next ; enddo
print *,c8p_w%c8p%c8p(10)
!
c16p_w=>c16p(1)
do i=1,9;   c16p_w=c16p_w%c16p_next ; enddo
print *,c16p_w%c16p%c16p(10)
!
c32p_w=>c32p(1)
do i=1,9;   c32p_w=c32p_w%c32p_next ; enddo
print *,c32p_w%c32p%c32p(10)
end subroutine sub_print
!
!
subroutine pointer_nullify
use array_data
use pointer_data
!
do i=1,10
 nullify (chp(i)%chp%chp    ,  &
          i1p(i)%i1p%i1p    ,  &
          i2p(i)%i2p%i2p    ,  &
          i4p(i)%i4p%i4p    ,  &
          i8p(i)%i8p%i8p    ,  &
          r4p(i)%r4p%r4p    ,  &
          r8p(i)%r8p%r8p    ,  &
          r16p(i)%r16p%r16p ,  &
          c8p(i)%c8p%c8p    ,  &
          c16p(i)%c16p%c16p ,  & 
          c32p(i)%c32p%c32p      )
enddo
return
!
entry sub_reent
do i=1,10
  select case(i)
  case (10)
    l1p(i)%l1p%l1p  => l1
    l4p(i)%l4p%l4p  => l4
    chp(i)%chp%chp  => ch
    i1p(i)%i1p%i1p  => i1
    i2p(i)%i2p%i2p  => i2
    i4p(i)%i4p%i4p  => i4
    i8p(i)%i8p%i8p  => i8 
    r4p(i)%r4p%r4p  => r4
    r8p(i)%r8p%r8p  => r8
    c8p(i)%c8p%c8p  => c8
    r16p(i)%r16p%r16p => r16
    c16p(i)%c16p%c16p => c16
    c32p(i)%c32p%c32p => c32
  case (1:9)
    l1p(i)%l1p_next  => l1p(i+1)
    l4p(i)%l4p_next  => l4p(i+1)
    chp(i)%chp_next  => chp(i+1)
    i1p(i)%i1p_next  => i1p(i+1)
    i2p(i)%i2p_next  => i2p(i+1)
    i4p(i)%i4p_next  => i4p(i+1)
    i8p(i)%i8p_next  => i8p(i+1)
    r4p (i)% r4p_next => r4p (i+1)
    r8p (i)% r8p_next => r8p (i+1)
    r16p(i)%r16p_next => r16p(i+1)
    c8p (i)% c8p_next => c8p (i+1)
    c16p(i)%c16p_next => c16p(i+1)
    c32p(i)%c32p_next => c32p(i+1)
  case default;
    print *,'NG'
    stop
  end select
enddo
return
end subroutine pointer_nullify
!
program pointer_test_02
call sub_init
call sub_associate
call sub_print
call pointer_nullify
call sub_reent
call sub_print
stop
end
