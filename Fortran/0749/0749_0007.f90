subroutine s1(i4,i3)
character(4),pointer::p
character(3):: c
character(i4),pointer::p4
character(i3):: c3
c3='123';c='123'

allocate(character(len(c3))::p,stat=k)
print *,k
allocate(character(len(c3))::p)
allocate(p,mold=c)
allocate(p,mold=c3,stat=k)
print *,k
allocate(p,mold=c3)
end
call s1(4,3)
print *,'err_pass'
end
