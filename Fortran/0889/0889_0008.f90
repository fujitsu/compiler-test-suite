subroutine s1(i4,i3)
character(i4),pointer::p4
character(i3):: c3
c3='123'

allocate(p4,mold=c3,stat=k)
print *,k
end
call s1(4,3)
print *,' pass'
end

