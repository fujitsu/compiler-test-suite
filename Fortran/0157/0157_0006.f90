subroutine s01(k)
integer a1(max(k,10000))
call ss(k,loc(a1))
end

do k=1,1000
call s01(k)
end do
print *,'pass'
end
subroutine ss(k,n)
integer(8)::n,x
allocatable :: x
allocate(x)
x=max(n,0)
write(7,'("k=",i4,x, z16.16, x ,z16.16)') k, n
end
