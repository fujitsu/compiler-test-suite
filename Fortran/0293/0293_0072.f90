 module World_line_contents
  type sx
    integer,allocatable :: sList
    integer, allocatable :: sList2(:)
  end type sx
  type Segm
    type(sx) :: seg(0:1)
  end type Segm
  type sList
    type(Segm), allocatable :: sList
    type(Segm), allocatable :: sList2(:)
  end type sList
  type Segment
    type(sList) :: segment(0:1)
  end type Segment
 end module World_line_contents

 subroutine test(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), allocatable :: Pntr
  integer(8) :: temp1
  temp1=LOC(Pntr%segment(id)%sList)
  write(1,'(z16.16)') temp1
 end subroutine test
 subroutine test2(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), allocatable :: Pntr
  integer(8) :: temp1
  temp1=LOC(Pntr%segment(id)%sList%seg(id)%sList)
  write(1,'(z16.16)') temp1
  write(1,'(z16.16)') LOC(Pntr%segment(id)%sList%seg(id)%sList)
 end subroutine test2
 subroutine test3(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), allocatable :: Pntr
  integer(8) :: temp1
  temp1=LOC(Pntr%segment(id)%sList2)
  write(1,'(z16.16)') temp1
  write(1,'(z16.16)')LOC(Pntr%segment(id)%sList2)
  write(1,'(z16.16)')LOC(Pntr%segment(id)%sList2(:))
  write(1,'(z16.16)')LOC(Pntr%segment(id)%sList2(::2))
 end subroutine test3

 use World_line_contents
interface
 subroutine test(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), allocatable :: Pntr
  integer(8) :: temp1
 end subroutine test
 subroutine test2(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), allocatable :: Pntr
  integer(8) :: temp1
 end subroutine test2
 subroutine test3(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), allocatable :: Pntr
  integer(8) :: temp1
 end subroutine test3
end interface
  type(Segment), allocatable :: Pntr
  allocate(Pntr)
  id=1
 call test(Pntr,id)
 allocate(Pntr%segment(id)%sList)
 call test(Pntr,id)
 allocate(Pntr%segment(id)%sList%seg(id)%sList)
 call test2(Pntr,id)
!
 allocate(Pntr%segment(id)%sList2(2:3))
 call test3(Pntr,id)
call chk
print *,'pass'
end
subroutine chk
character*16 c,c1
rewind 1
read (1,*) c;if (c/='0000000000000000')print *,101,c
read (1,*) c;if (c=='0000000000000000')print *,102,c
read (1,*) c;if (c=='0000000000000000')print *,103,c
read (1,*) c1;if (c/=c1)print *,104,c
read (1,*) c;if (c=='0000000000000000')print *,105,c
read (1,*) c1;if (c/=c1)print *,106,c
read (1,*) c1;if (c/=c1)print *,107,c
read (1,*) c1;if (c/=c1)print *,108,c
end
