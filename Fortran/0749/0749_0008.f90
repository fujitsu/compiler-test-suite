subroutine s1(i4,i3)
character(4),pointer::p
character(3):: c
character(i4),pointer::p4
character(i3):: c3
c3='123';c='123'

allocate(p4,source=c3,stat=k)
print *,k
allocate(p4,source=c3)
allocate(p,mold=c)
allocate(p,mold=c3,stat=k)
print *,k
allocate(p,mold=c3)
end
call s1(4,3)
print *,'err_pass'
end
