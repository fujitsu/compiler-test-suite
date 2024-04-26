subroutine s01(k)
integer a1(max(k,10000))
do nx=1,10
block 
integer a2(10,max(k,100000))
call ss(k,loc(a2),loc(a1))
end block
end do
end

do k=1,100
call s01(k)
end do
print *,'pass'
end
subroutine ss(k,n,nn)
integer(8)::n,x,nn
allocatable :: x
allocate(x)
x=max(n,nn)
write(1,'("k=",i4,x, z16.16, x ,z16.16)') k, n, nn
end
