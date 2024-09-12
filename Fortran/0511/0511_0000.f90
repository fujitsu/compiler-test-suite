call s1
call s2
print *,"pass"
contains
subroutine s1
integer,allocatable::aaa(:)
allocate(aaa(3))
associate(bbb=>aaa)
bbb=[1,2,3]
aaa=bbb
end associate
end subroutine s1
subroutine s2
integer::a(2),b(3),c(2,3)
integer,allocatable::d(:,:),e(:,:)
allocate(d(2,3),e(2,3))
a=[1,2]
b=[1,2,3]
c(a,b)=1
associate(zzz=>c)
zzz=c
d=c
if(any(d/=reshape([1,1,1,1,1,1],[2,3]))) print *,'err1'
e=zzz
if(any(e/=reshape([1,1,1,1,1,1],[2,3]))) print *,'err2'
end associate
end subroutine s2

end

