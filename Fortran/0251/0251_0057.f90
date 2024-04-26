call ss

contains
subroutine ss
interface assignment(=)
subroutine ss2(d1,d2)
integer,intent(out)::d1
character(len=*),intent(in) :: d2
end subroutine
end interface assignment(=)

block
interface operator(*)
function ff(d1,d2)
integer::ff
character(len=*),intent(in) :: d1,d2
end function
end interface operator(*)

b:block
interface operator(*)
function ff22(d1,d2)
integer::ff22
character(len=*),intent(in) :: d1
integer,intent(in) :: d2
end function
end interface operator(*)

if(('ch'*'abc')/=6) print*,101
if(('ch'*2)/=8) print*,105

c: block
interface operator(*)
function ff2(d1,d2)
integer::ff2
character(len=*),intent(in) :: d1
logical, intent(in) :: d2
end function
end interface operator(*)

if(('ch'*'abc')/=6) print*,102
if(('ch'*2)/=8) print*,106
if(('ch'*.true.)/=4) print*,107

d: block
real :: rr
interface assignment(=)
subroutine ss22(d1,d2)
real,intent(out)::d1
character(len=*),intent(in) :: d2
end subroutine
end interface assignment(=)

rr='abc'

if(('ch'*2)/=8) print*,108
if(('ch'*.false.)/=0) print*,109
if(int(rr)/=4) print*,103
end block d
ii='abc'

if(ii/=6) print*,104
endblock c
end block b

if(('ch'*'abc')==6) print*,'pass'
end block
end subroutine
end

function ff(d1,d2)
integer::ff
character(len=*),intent(in) :: d1,d2
ff=len(d1)*len(d2)
end function

function ff22(d1,d2)
integer::ff22
character(len=*),intent(in) :: d1
integer,intent(in) :: d2
ff22=2*len(d1)*d2
end function

function ff2(d1,d2)
integer::ff2
character(len=*),intent(in) :: d1
logical,intent(in) :: d2
ff2=0
if(d2) ff2=2*len(d1)
end function

subroutine ss22(d1,d2)
real,intent(out)::d1
character(len=*),intent(in) :: d2
d1=len(d2)+1
end subroutine

subroutine ss2(d1,d2)
integer,intent(out)::d1
character(len=*),intent(in) :: d2
d1=2*len(d2)
end subroutine
