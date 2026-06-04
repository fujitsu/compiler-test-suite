integer::r(3,4)
call sub1(r)
print*,"PASS"
contains
subroutine sub1(gg)
integer::gg(..)
character(len= ubound(gg,2))::ch
if(len(ch)/=4)print*,101
end subroutine
end

