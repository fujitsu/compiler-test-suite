Program Main
integer,dimension(2,3,2,1)::a
integer,parameter, dimension (2,3,2,1) :: b = reshape((/0,-30,-100,-50,4,5,8,-11, &
                                   6,-3,2,-400/), (/2,3,2,1/))

integer,parameter :: c = product(b, mask = b> 500)
integer :: d
integer::p = kind(product(b, mask = b> 500))
a = reshape((/0,-30,-100,-50,4,5,8,-11,6,-3,2,-400/), (/2,3,2,1/))
d =  product(a, mask = a> 500)
print*, c , '---', d
if ( c.ne.d ) then
print*, '??? (Error: I->I) ???'
else
print*, 'I -> I'
endif
call check(p, kind(product(a,mask = a > 500)))

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
                     
