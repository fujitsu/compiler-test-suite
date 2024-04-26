interface gnr
integer function f1(ss)
optional :: ss
interface
subroutine ss()
end subroutine
end interface
end function

integer function f2(ss)
integer :: ss
end function

end interface

integer :: ii
ii = gnr(null())
if(ii /= 10 ) print*,ii
ii = gnr()
end

integer function  f1(ss)
optional :: ss
interface
subroutine ss()
end subroutine
end interface
if (present(ss)) then 
f1=12
else
f1=10
print*, 'pass'
endif
end function

integer function f2(ss)
integer :: ss
f2=ss
end function
