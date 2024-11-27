subroutine s1(i4,i3)
character(i3),pointer :: p3
character(i4),pointer::p4,pp4
character(:),pointer::pd
character(i3):: c3
c3='123'

allocate(p3,pp4,p4,pd,mold=c3)
end
call s1(4,3)
print *,' pass'
end

