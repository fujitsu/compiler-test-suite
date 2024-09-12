      call s1
      print *,'pass'
      end
module m1
type sillytype
  integer :: points 
  real,pointer::num(:)
end type
end module
      subroutine s1
use m1
implicit none
type(sillytype)::data
integer ::i
integer ::clock(8)
integer ::clock2(8)

do i=100,500,100
  allocate(data%num(i))
  data%points=i
  call date_and_time(values=clock)
  call Random_number(data%num(:))

  call sort
  call date_and_time(values=clock2)
  write(1,*)'Number of values sorted =',i
  write(1,*)'Time taken = ',(clock2(6) -clock(6))* 60000 &
                        + (clock2(7) -clock(7))* 1000 &
                        +  clock2(8) -clock(8),'milli seconds.'
  deallocate(data%num)
end do

contains
subroutine sort
logical ::continue
integer ::i,ops
real::swap
continue=.true.
ops=0
do while(continue)
  continue =.false.
  ops=ops+1
  do i=1,data%points-1
    ops=ops+1
    if (data%num(i).gt.data%num(i+1))then
      swap=data%num(i)
      data%num(i)=data%num(i+1)
      continue=.true.
      ops=ops+3
    end if
    if (data%num(data%points-i).gt.data%num(data%points-i+1)) then
      swap=data%num(data%points -i)
      data%num(data%points -i)=data%num(data%points -i+1)
      data%num(data%points -i+1) =swap
      ops=ops+3
    endif
  end do
end do
end subroutine
end
