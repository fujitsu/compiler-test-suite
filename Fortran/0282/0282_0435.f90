Program Main
real*16,dimension(2,3,2,1)::a
real*16,parameter, dimension (2,3,2,1) :: b = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16, &
                                   6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,1/))

real*16,dimension(1) :: d
real*16,parameter,dimension(1) :: c = product(b, mask = b> -30)
integer::p = kind(product(b,mask = b> -30))
a = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16, &
                      6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,1/))
d =  product(a,mask = a> -30)
do I = 1,1
print*, c(i), '---', d(i)
if (c(i) .ne.d(i) ) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'
endif
end do
call check(p, kind(product(a,mask = a> -30)))
end

subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine

