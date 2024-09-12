interface inr
function subb()
integer :: subb
end
end interface

interface inr
function subb2(d1,d2)
integer :: subb2
integer :: d1
integer,allocatable :: d2
end function
end interface

interface inr
function subb3(d3,d4)
integer :: d3
integer,pointer :: d4
integer :: subb3
end
end interface

integer,allocatable :: ii
integer,pointer :: i2
Allocate(ii,i2)
ii = 9
i2 = 9
if(inr() /=subb()) print *,101
if(inr(1,ii) /=subb2(1,ii)) print *,102
if(inr(2,i2) /=subb3(2,i2)) print *,103
print *,"Pass"
end

function subb()
integer :: subb
subb=1
end function

function subb2(d1,d2)
integer :: d1
integer,allocatable :: d2
integer :: subb2
subb2= d2+d1
end function

function subb3(d3,d4)
integer :: d3
integer,pointer :: d4
integer :: subb3
subb3=d3+d4
end
