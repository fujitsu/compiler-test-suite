Program Main
complex*32,dimension(2,3,2,1)::a
complex*32,parameter, dimension (2,3,2,1) :: b = reshape((/(0.0_16,0.0_16),(-30.0_16,-30.0_16),(-100.0_16,-100.0_16),&
                           (-50.0_16,-50.0_16),(4.0_16,4.0_16), (5.0_16,5.0_16),(8.0_16,8.0_16),&
                           (-11.0_16,-11.0_16),(6.0_16,6.0_16),(-3.0_16,-3.0_16),(2.0_16, 2.0_16),&
                           (-400.0_16, -400.0_16)/), (/2,3,2,1/))


logical,parameter,dimension(2,3,2,1)::m = reshape((/.false., .true.,.false.,.false.,.false.,&
                   .true.,.true.,.true.,.false.,.true.,.true.,.false./),(/2,3,2,1/))

complex*32,dimension(1) :: d
complex*32,parameter,dimension(1) :: c = product(b, mask = m )
integer::p = kind(product(b,mask = m))
a = reshape((/(0.0_16,0.0_16),(-30.0_16,-30.0_16),(-100.0_16,-100.0_16),(-50.0_16,-50.0_16),&
             (4.0_16,4.0_16), (5.0_16,5.0_16),(8.0_16,8.0_16),(-11.0_16,-11.0_16),(6.0_16,6.0_16),&
             (-3.0_16,-3.0_16),(2.0_16, 2.0_16),(-400.0_16, -400.0_16)/), (/2,3,2,1/))
d =  product(a,mask = m)
do I = 1,1
print*, c(i), '---', d(i)
if (c(i) .ne.d(i) ) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'
endif
end do
call check(p, kind(product(a,mask = m)))
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
