call subb()
end
subroutine subb()
if(s2()/=0) print *,100
print *,"Pass"
contains
function s2()
integer :: s2
s2=0
end
end
