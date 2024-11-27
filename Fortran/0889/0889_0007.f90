subroutine s1(i4,i3)
character(i4),pointer::p4
character(i3):: c3
character(3) :: ee
c3='123'

allocate(p4,mold=c3,errmsg=ee)
end
call s1(4,3)
print *,'pass'
end

