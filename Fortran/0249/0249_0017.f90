
integer :: ii
ii = f1(null())
if(ii /= 10 ) print*,ii
print*, 'pass'

contains
function f1(ss)
optional :: ss
external :: ss
if (present(ss)) then
f1=12
else
f1=10
endif
end function
end
