subroutine s1(i3)
character(4),pointer::p
character(i3):: c3
c3='123'

allocate(p,mold=c3)
end
call s1(3)
print *,'pass'
end

