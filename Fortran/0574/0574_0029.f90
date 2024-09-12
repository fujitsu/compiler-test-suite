type inr
integer :: ii
real :: rr
end type
interface inr
function subb()
integer :: subb
end
end interface

interface inr
function subb2(d1)
integer :: subb2
integer,pointer :: d1
end function
end interface

interface inr
function subb3(d1)
integer,allocatable :: d1
integer :: subb3
end function
end interface

integer,allocatable :: ii
integer,pointer :: i2
Allocate(ii,i2)
ii = 9
i2 = 9
if(inr() /=1) print *,101
if(inr(ii) /=5) print *,102
if(inr(i2) /=10) print *,103
print *,"Pass"
end

function subb()
integer :: subb
subb=1
end function

function subb2(d1)
integer,pointer :: d1
integer :: subb2
subb2= d1+1
end function

function subb3(d1)
integer :: subb3
integer,allocatable :: d1
d1=5
subb3=d1
end
