module array_data_1
character*10,target,dimension(10)::ch
end module
!
module array_data_2
use array_data_1
integer*1,   target,dimension(10)::i1
end module
!
module array_data_3
use array_data_2
integer*2,   target,dimension(10)::i2
end module
!
module array_data_4
use array_data_3
integer*4,   target,dimension(10)::i4
end module
!
module array_data_5
use array_data_4
integer*8,   target,dimension(10)::i8
end module
!
module array_data_6
use array_data_5
real*4,      target,dimension(10)::r4
end module
!
module array_data_7
use array_data_6
real*8,      target,dimension(10)::r8
end module
!
module array_data_8
use array_data_7
real*16,     target,dimension(10)::r16
end module
!
module array_data_9
use array_data_8
complex*8 ,  target,dimension(10)::c8
end module
!
module array_data_10
use array_data_9
complex*16,  target,dimension(10)::c16
end module
!
module array_data_11
use array_data_10
complex*32,  target,dimension(10)::c32
end module
!
subroutine sub
use array_data_11
type c1p_t ; character*10,pointer,dimension(:)::chp ; end type c1p_t
type i1p_t ; integer*1,   pointer,dimension(:)::i1p ; end type i1p_t
type i2p_t ; integer*2,   pointer,dimension(:)::i2p ; end type i2p_t
type i4p_t ; integer*4,   pointer,dimension(:)::i4p ; end type i4p_t
type i8p_t ; integer*8,   pointer,dimension(:)::i8p ; end type i8p_t
type r4p_t ; real*4,      pointer,dimension(:)::r4p ; end type r4p_t
type r8p_t ; real*8,      pointer,dimension(:)::r8p ; end type r8p_t
type r16p_t; real*16,     pointer,dimension(:)::r16p; end type r16p_t
type c8p_t ; complex*8 ,  pointer,dimension(:)::c8p ; end type c8p_t
type c16p_t; complex*16,  pointer,dimension(:)::c16p; end type c16p_t
type c32p_t; complex*32,  pointer,dimension(:)::c32p; end type c32p_t
!
do i=1,10
ch (i) = '0123456789'
i1 (i) = i; i2 (i) = i; i4 (i) = i; i8 (i) = i
r4 (i) = i; r8 (i) = i; r16(i) = i;
c8 (i) = i; c16(i) = i; c32(i) = i
enddo
call sub_child
return
contains
  subroutine sub_child
  type (c1p_t) chp(10)
  type (i1p_t) i1p(10)
  type (i2p_t) i2p(10)
  type (i4p_t) i4p(10)
  type (i8p_t) i8p(10)
  type (r4p_t) r4p(10)
  type (r8p_t) r8p(10)
  type (r16p_t) r16p(10)
  type (c8p_t) c8p(10)
  type (c16p_t) c16p(10)
  type (c32p_t) c32p(10)
!
  do i=1,10
  if (ch(i)=='0123456789') chp(i)%chp  => ch
  if (i1(i)==i) i1p(i)%i1p  => i1
  if (i2(i)==i) i2p(i)%i2p  => i2
  if (i4(i)==i) i4p(i)%i4p  => i4
  if (i8(i)==i) i8p(i)%i8p  => i8 
  if (r4(i)==i) r4p(i)%r4p  => r4
  if (r8(i)==i) r8p(i)%r8p  => r8
  if (r16(i)==i) r16p(i)%r16p => r16
  if (c8(i)==i) c8p(i)%c8p  => c8
  if (c16(i)==i) c16p(i)%c16p => c16
  if (c32(i)==i) c32p(i)%c32p => c32
  enddo
!
  print *,chp(10)%chp(10)
  print *,i1p(10)%i1p(10),i2p(10)%i2p(10),  i4p(10)%i4p(10),i8p(10)%i8p(10)
  print *,r4p(10)%r4p(10),r8p(10)%r8p(10)
  print *,r16p(10)%r16p(10)
  print *,c8p(10)%c8p(10),c16p(10)%c16p(10)
  print *,c32p(10)%c32p(10)
!
  do i=1,10
   nullify (chp(i)%chp  ,  &
            i1p(i)%i1p  ,  &
            i2p(i)%i2p  ,  &
            i4p(i)%i4p  ,  &
            i8p(i)%i8p  ,  &
            r4p(i)%r4p  ,  &
            r8p(i)%r8p  ,  &
            r16p(i)%r16p,  &
            c8p(i)%c8p  ,  &
            c16p(i)%c16p,  & 
            c32p(i)%c32p)
  enddo
!
  do i=1,10
    select case(i)
    case (1:10)
      chp(i)%chp  => ch
      i1p(i)%i1p  => i1
      i2p(i)%i2p  => i2
      i4p(i)%i4p  => i4
      i8p(i)%i8p  => i8 
      r4p(i)%r4p  => r4
      r8p(i)%r8p  => r8
      c8p(i)%c8p  => c8
      r16p(i)%r16p => r16
      c16p(i)%c16p => c16
      c32p(i)%c32p => c32
    case default;
      print *,'NG'
      stop
    end select
  enddo
!
  print *,chp(10)%chp(10)
  print *,i1p(10)%i1p(10),i2p(10)%i2p(10),  i4p(10)%i4p(10),i8p(10)%i8p(10)
  print *,r4p(10)%r4p(10),r8p(10)%r8p(10)
  print *,r16p(10)%r16p(10)
  print *,c8p(10)%c8p(10),c16p(10)%c16p(10)
  print *,c32p(10)%c32p(10)
!
  return
  end subroutine sub_child
end subroutine sub  
!
program pointer_test_01
call sub
stop
end
