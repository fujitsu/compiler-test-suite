call s1
call s2
print *,'pass'
contains
subroutine s1
integer,allocatable:: i(:)
allocate(i(3))
l=1
m=2
n=3
i=(/l,m,n/)
if(any(i/=[1,2,3])) print *,'err1'
end  subroutine s1
subroutine s2
character(:),allocatable:: i(:),l,m,n
allocate(i(3),source="zzz")
allocate(l,m,n,mold="x")
l="1"
m="2"
n="3"
i=(/l,m,n/)
if(any(i/=["1","2","3"])) print *,'err2'
end subroutine s2

end
