subroutine s1(i4,i3)
character(i4),pointer::p4
character(:),pointer::pd
character(i3):: c3
c3='123'

allocate(pd,p4,mold=c3)
end
call s1(4,3)
print *,' pass'
end

