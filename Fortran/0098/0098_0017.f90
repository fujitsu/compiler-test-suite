call subb()
end
subroutine subb()
integer :: ii=8
call s2()
contains
subroutine s2()
if(ii/=8) print *,100
print *,"Pass"
end
end
