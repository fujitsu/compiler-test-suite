subroutine s01(k)
integer, allocatable, target :: a1(:)
integer, allocatable, target :: a2(:,:)
allocate(a1(max(k,10000)))
block
allocate(a2(k, max(k, 100000)))
call ss(k,loc(a2),loc(a1))
deallocate(a2)
end block
deallocate(a1)
end

do k=1,1000
call s01(k)
end do
print *,'pass'
end
subroutine ss(k,n,nn)
integer(8)::n,x,nn
allocatable :: x
allocate(x)
x=max(n,nn)
write(2,'("k=",i4,x, z16.16, x ,z16.16)') k, n, nn
end
