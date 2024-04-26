
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
logical,intent(in) :: d2
end function
end interface operator(*)

if(('ch'*'abc')/=6) print*,101
end block b

c: block
interface operator(*)
function ff2(d1,d2)
integer::ff2
character(len=*),intent(in) :: d1
integer, intent(in) :: d2
end function
end interface operator(*)

if(('ch'*'abc')/=6) print*,102
if(('ch'*3)/=12) print*,1022

d: block
real rr
interface assignment(=)
subroutine ss(d1,d2)
real,intent(out)::d1
character(len=*),intent(in) :: d2
end subroutine
end interface assignment(=)

rr='abc'

if(int(rr)/=3) print*,103
end block d
ii='abc'

if(ii/=6) print*,104
endblock c

if(('ch'*'abc')==6) print*,'pass'
end block
end

function ff(d1,d2)
integer::ff
character(len=*),intent(in) :: d1,d2
ff=len(d1)*len(d2)
end function

function ff2(d1,d2)
integer::ff2
character(len=*),intent(in) :: d1
integer,intent(in) :: d2
ff2=2*len(d1)*d2
end function

function ff22(d1,d2)
integer::ff22
character(len=*),intent(in) :: d1
logical,intent(in) :: d2
ff22=0
if(d2 .eqv. .true.) ff22=2*len(d1)
end function

subroutine ss(d1,d2)
real,intent(out)::d1
character(len=*),intent(in) :: d2
d1=len(d2)+0.5
end subroutine

subroutine ss2(d1,d2)
integer,intent(out)::d1
character(len=*),intent(in) :: d2
d1=2*len(d2)
end subroutine
