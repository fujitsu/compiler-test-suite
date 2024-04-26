interface gnr

integer function f1(ss)
optional :: ss
external :: ss
end function

integer function f2(ss)
integer :: ss
end function


end interface


integer :: ii
ii = gnr(null())
if(ii /= 10 ) print*,ii
print*, 'pass'
end


integer function f1(ss)
optional :: ss
external :: ss
if (present(ss)) then
f1=12
else
f1=10
endif
end function

integer function f2(ss)
integer :: ss
f2=ss
end function
