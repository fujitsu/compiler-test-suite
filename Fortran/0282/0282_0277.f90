Program Main
real*16,dimension(2,3,2,1)::a
real*16,parameter, dimension (2,3,2,1) :: b = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16, &
                                   6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,1/))

logical,parameter, dimension(12)::m = .false.
logical,parameter,dimension(2,3,2,1)::n = reshape(m,(/2,3,2,1/))
real*16,parameter :: c = maxval(b, mask = n)
real*16 :: d
integer::p = kind(maxval(b, mask = n))
a = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16,6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,1/))
d =  maxval(a, mask = n)
print*, c , '---', d
if ( c.ne.d ) then
print*, '??? (Error:) ???'
else
print*, 'PASS'
endif
call check(p, kind(maxval(a,mask = n)))

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
                     
