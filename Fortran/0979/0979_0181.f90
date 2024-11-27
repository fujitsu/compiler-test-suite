call test01()
print *,'pass'
end

module mod
type ta
integer,pointer :: jjj
end type
type tt
type(ta),pointer :: iii
end type

type ttaa
integer,pointer :: iii
end type
end

subroutine test01()
use mod
interface
subroutine subbb(i1,i2,i3,i4)
use mod
type(ttaa) ,intent(in) :: i1,i2,i3,i4
end subroutine
subroutine subbb2(i1,i2,i3,i4)
use mod
type(ttaa) ,intent(in) :: i1,i2,i3
type(ttaa) ,intent(inout) :: i4
end subroutine
end interface
type(ttaa) :: i1,i2,i3,i4
allocate(i1%iii)
allocate(i2%iii)
allocate(i3%iii)
allocate(i4%iii)
call subbb(i1,i2,i3,i4)
if (i1%iii.ne.100)write(6,*) "NG"
if (i2%iii.ne.200)write(6,*) "NG"
if (i3%iii.ne.300)write(6,*) "NG"
if (i4%iii.ne.400)write(6,*) "NG"
call subbb2(i1,i2,i3,i4)
if (i1%iii.ne.199)write(6,*) "NG"
if (i2%iii.ne.299)write(6,*) "NG"
if (i3%iii.ne.399)write(6,*) "NG"
if (i4%iii.ne.499)write(6,*) "NG"
end

subroutine subbb(i1,i2,i3,i4)
use mod
type(ttaa) ,intent(in) :: i1,i2,i3,i4
i1%iii=100
i2%iii=200
i3%iii=300
i4%iii=400
end 

subroutine subbb2(i1,i2,i3,i4)
use mod
type(ttaa) ,intent(in) :: i1,i2,i3
type(ttaa) ,intent(inout) :: i4
i1%iii=100
i2%iii=200
i3%iii=300
i4%iii=400
call sub1(i1%iii)
call sub2(i2%iii)
call sub3(i3%iii)
call sub4(i4%iii)
contains
subroutine sub1(ii)
integer,intent(in),pointer :: ii
ii=199
end subroutine
subroutine sub2(ii)
integer,pointer :: ii
ii=299
end subroutine
subroutine sub3(ii)
integer :: ii
ii=399
end subroutine
subroutine sub4(ii)
integer,intent(out) :: ii
ii=499
end subroutine
end
