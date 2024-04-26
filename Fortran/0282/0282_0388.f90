Program Main
complex*16,dimension(2,3,2,1)::a
complex*16,parameter, dimension (2,3,2,1) :: b = reshape((/(0.0_8,0.0_8),(-30.0_8,-30.0_8),(-100.0_8,-100.0_8),&
                           (-50.0_8,-50.0_8),(4.0_8,4.0_8), (5.0_8,5.0_8),(8.0_8,8.0_8),&
                           (-11.0_8,-11.0_8),(6.0_8,6.0_8),(-3.0_8,-3.0_8),(2.0_8, 2.0_8),&
                           (-400.0_8, -400.0_8)/), (/2,3,2,1/))




logical,parameter,dimension(2,3,2,1)::m = reshape((/.true., .true.,.false.,.false.,.false.,&
                   .true.,.true.,.true.,.false.,.true.,.true.,.false./),(/2,3,2,1/))

complex*16,dimension(1) :: d
complex*16,parameter,dimension(1) :: c = product(b, mask = m )
integer::p = kind(product(b,mask = m))
a = reshape((/(0.0_8,0.0_8),(-30.0_8,-30.0_8),(-100.0_8,-100.0_8),(-50.0_8,-50.0_8),&
             (4.0_8,4.0_8), (5.0_8,5.0_8),(8.0_8,8.0_8),(-11.0_8,-11.0_8),(6.0_8,6.0_8),&
             (-3.0_8,-3.0_8),(2.0_8, 2.0_8),(-400.0_8, -400.0_8)/), (/2,3,2,1/))
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
