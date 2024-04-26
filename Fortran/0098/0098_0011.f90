interface inr
function subb()
integer :: subb
end
end interface

interface inr
function subb2(d1)
integer :: subb2
integer :: d1
end function
end interface

interface inr
function subb3(d1)
real :: d1
integer :: subb3
end
end interface

integer :: ii=9
real :: i2 = 9
if(subb() /=1) print *,101
if(subb2(ii) /=10) print *,102
if(subb3(i2) /=5) print *,103
print *,"Pass"
end

function subb()
integer :: subb
subb=1
contains
end function

function subb2(d1)
integer :: d1
integer :: subb2
subb2= d1+1
contains
end function

function subb3(d1)
integer :: subb3
real :: d1
d1=5
subb3=d1
end
