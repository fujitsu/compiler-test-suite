subroutine s1(i4,i3)
character(i4),pointer :: p4
character(:),pointer::p3,pp3
character(:),pointer::pd
character(i3):: c3
c3='123'

allocate(p4,pp3,p3,pd,mold=c3)
end
call s1(4,3)
print *,' pass'
end

