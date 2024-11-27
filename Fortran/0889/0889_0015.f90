subroutine s1(i4,i3)
character(i4),pointer::p4(:,:)
character(i3),pointer::p3(:,:)
character(i3):: c3(2,3)
c3='123'

allocate(p4,p3(2,3),mold=c3)
end
call s1(4,3)
print *,' pass'
end

