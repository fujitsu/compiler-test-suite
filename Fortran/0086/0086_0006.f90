integer::ddd(2)
ddd=1
call s1([1,2],[3,4],ddd)
call s2([1,2],[3,4],ddd)
print *,"pass"
contains
subroutine s1(aaa,bbb,ddd)
integer(kind=4),optional:: aaa(:),bbb(:),ddd(:)
integer::k
k=1
where(k<[2.0])
 ddd=max(aaa,bbb)
end where
if(any(size(ddd)/=[2])) print *,'err1'
end subroutine s1
subroutine s2(aaa,bbb,ddd)
integer(kind=4),optional:: aaa(:),bbb(:),ddd(:)
integer::k
k=1
where(k<[2.0])
 ddd=min(aaa,bbb)
end where
if(any(size(ddd)/=[2])) print *,'err2'
end subroutine s2
end
