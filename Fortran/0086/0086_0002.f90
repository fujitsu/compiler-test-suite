integer::ddd(2)
ddd=1
call s1([1,2],[3,4],[5,6],ddd)
call s2([1,2],[3,4],[5,6],ddd)
print *,"pass"
contains
subroutine s1(aaa,bbb,ccc,ddd)
integer(kind=4),optional:: aaa(:),bbb(:),ccc(:),ddd(:)
integer::k
k=1
where(k<[2.0])
 ddd=max(aaa,bbb,ccc)
end where
if(any(shape(ddd)/=[2])) print *,'err1'
end subroutine s1
subroutine s2(aaa,bbb,ccc,ddd)
integer(kind=4),optional:: aaa(:),bbb(:),ccc(:),ddd(:)
integer::k
k=1
where(k<[2.0])
 ddd=min(aaa,bbb,ccc)
end where
if(any(shape(ddd)/=[2])) print *,'err2'
end subroutine s2
end
