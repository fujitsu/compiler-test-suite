call ss1
call ss2
call ss3
print *,'pass'
contains
subroutine ss1
implicit none
type t
integer(1) :: a
integer(2) :: b
integer :: c
integer(8) :: d
end type
type(t) :: x
if(sizeof(x%a)/=1) print *,'err1'
if(sizeof(x%b)/=2) print *,'err2'
if(sizeof(x%c)/=4) print *,'err3'
if(sizeof(x%d)/=8) print *,'err4'
end subroutine
subroutine ss2
integer,parameter::i=sizeof(X=sizeof(x=1.0_16))
if(i/=8) print *,'err11'
if(sizeof(X=sizeof(x=i))/=8) print *,'err12'
if(sizeof(i**i)/=4) print *,'err13'
if(sizeof(i*i)/=4) print *,'err14'
if(sizeof(i+i)/=4) print *,'err15'
if(sizeof(i-i)/=4) print *,'err16'
end subroutine
subroutine ss3
integer a(4,8),b(2),c(3)
if(sizeof(a(2,b))/=8) print *,'err21'
if(sizeof(a(c,2))/=12) print *,'err22'
if(sizeof(a(b,c))/=24) print *,'err23'
end subroutine
end
