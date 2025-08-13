 module World_line_contents
  type sList
    type(Segment), pointer :: sList
    type(Segment), pointer :: sList2(:)
  end type sList
  type Segment
    type(sList) :: segment(0:1)
  end type Segment
 end module World_line_contents

 subroutine test(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), pointer :: Pntr
  integer(8) :: temp1
  temp1=LOC(Pntr%segment(id)%sList)
  write(52,'(z16.16)') temp1
 end subroutine test
 subroutine test2(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), pointer :: Pntr
  integer(8) :: temp1
  temp1=LOC(Pntr%segment(id)%sList%segment(id)%sList)
  write(52,'(z16.16)') temp1
  write(52,'(z16.16)') LOC(Pntr%segment(id)%sList%segment(id)%sList)
 end subroutine test2
 subroutine test3(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), pointer :: Pntr
  integer(8) :: temp1
  temp1=LOC(Pntr%segment(id)%sList2)
  write(52,'(z16.16)') temp1
  write(52,'(z16.16)')LOC(Pntr%segment(id)%sList2)
  write(52,'(z16.16)')LOC(Pntr%segment(id)%sList2(:))
  write(52,'(z16.16)')LOC(Pntr%segment(id)%sList2(::2))
 end subroutine test3

 use World_line_contents
interface
 subroutine test(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), pointer :: Pntr
  integer(8) :: temp1
 end subroutine test
 subroutine test2(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), pointer :: Pntr
  integer(8) :: temp1
 end subroutine test2
 subroutine test3(Pntr,id)
  use World_line_contents
  integer, intent(in) :: id
  type(Segment), pointer :: Pntr
  integer(8) :: temp1
 end subroutine test3
end interface
  type(Segment), pointer :: Pntr
    type(Segment), target ::x(2:3)
    type(Segment), target ::y(2:5)
  allocate(Pntr)
  id=1
  Pntr%segment(id)%sList=>null()
 call test(Pntr,id)
 allocate(Pntr%segment(id)%sList)
 call test(Pntr,id)
 allocate(Pntr%segment(id)%sList%segment(id)%sList)
 call test2(Pntr,id)
!
 allocate(Pntr%segment(id)%sList2(2:3))
 call test3(Pntr,id)
 Pntr%segment(id)%sList2=>x
 call test3(Pntr,id)
 Pntr%segment(id)%sList2=>y(::2)
 call test3(Pntr,id)
call chk
print *,'pass'
end
subroutine chk
character*16 c,c1
rewind 52
read (52,*) c;if (c/='0000000000000000')print *,101,c
read (52,*) c;if (c=='0000000000000000')print *,102,c
read (52,*) c;if (c=='0000000000000000')print *,103,c
read (52,*) c1;if (c/=c1)print *,104,c
read (52,*) c;if (c=='0000000000000000')print *,105,c
read (52,*) c1;if (c/=c1)print *,106,c
read (52,*) c1;if (c/=c1)print *,107,c
read (52,*) c1;if (c/=c1)print *,108,c
read (52,*) c;if (c=='0000000000000000')print *,109,c
read (52,*) c1;if (c/=c1)print *,110,c
read (52,*) c1;if (c/=c1)print *,111,c
read (52,*) c1;if (c/=c1)print *,112,c
read (52,*) c;if (c=='0000000000000000')print *,113,c
read (52,*) c1;if (c/=c1)print *,114,c
read (52,*) c1;if (c/=c1)print *,115,c
read (52,*) c1;if (c/=c1)print *,116,c
end
