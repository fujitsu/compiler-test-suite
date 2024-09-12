call s1
print *,'pass'
contains
subroutine s1
integer array(10)
integer(8), parameter :: p = 8
structure /str/
integer i
complex c
end structure
record /str/ r
character(10,1) c
type d
integer array(10)
end type
type (d) do
if(sizeof(array)/=40) print *,'err1'
if(sizeof(array(2))/=4) print *,'err2'
if(sizeof(p)/=8) print *,'err3'
if(sizeof(r)/=12) print *,'err4'
if(sizeof(r.c)/=8) print *,'err5'
if(sizeof(c(3:6))/=4) print *,'err6'
if(sizeof(c)/=10) print *,'err7'
if(sizeof(do)/=sizeof(do%array)) print *,'err8'
end subroutine
end
