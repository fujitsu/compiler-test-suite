real::aaa,bbb,ccc,ddd(2)
aaa=1
bbb=2
ccc=3
ddd=4
call s1(aaa,bbb,ccc,ddd)
call s2(aaa,bbb,ccc,ddd)
print *,"pass"
contains
subroutine s1(aaa,bbb,ccc,ddd)
real(kind=4),optional:: aaa,bbb,ccc,ddd(:)
integer::k
k=1
where(k<[2.0])
 ddd=max(aaa,bbb,ccc,[0.0,0.0])
end where
if(any(size(ddd)/=[2])) print *,'err1',ddd
end subroutine s1
subroutine s2(aaa,bbb,ccc,ddd)
real(kind=4),optional:: aaa,bbb,ccc,ddd(:)
integer::k
k=1
where(k<[2.0])
 ddd=min(aaa,bbb,ccc,[1.0,1.0])
end where
if(any(size(ddd)/=[2])) print *,'err2',ddd
end subroutine s2
end
