Program Main
complex*8,dimension(2,3,2,1)::a
complex*8,parameter, dimension (2,3,2,1) :: b = reshape((/(0.0_4,0.0_4),(-30.0_4,-30.0_4),(-100.0_4,-100.0_4),&
                           (-50.0_4,-50.0_4),(4.0_4,4.0_4), (5.0_4,5.0_4),(8.0_4,8.0_4),&
                           (-11.0_4,-11.0_4),(6.0_4,6.0_4),(-3.0_4,-3.0_4),(2.0_4, 2.0_4),&
                           (-400.0_4, -400.0_4)/), (/2,3,2,1/))

logical,parameter,dimension(2,3,2,1)::m = reshape((/.true., .true.,.false.,.false.,.false.,&
                   .true.,.true.,.true.,.false.,.true.,.true.,.false./),(/2,3,2,1/))

complex*8,dimension(1) :: d
complex*8,parameter,dimension(1) :: c = sum(b, mask = m )
integer::p = kind(sum(b,mask = m))
a = reshape((/(0.0_4,0.0_4),(-30.0_4,-30.0_4),(-100.0_4,-100.0_4),(-50.0_4,-50.0_4),&
             (4.0_4,4.0_4), (5.0_4,5.0_4),(8.0_4,8.0_4),(-11.0_4,-11.0_4),(6.0_4,6.0_4),&
             (-3.0_4,-3.0_4),(2.0_4, 2.0_4),(-400.0_4, -400.0_4)/), (/2,3,2,1/))
d =  sum(a,mask = m)
do I = 1,1
print*, c(i), '---', d(i)
if (c(i) .ne.d(i) ) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'
endif
end do
call check(p, kind(sum(a,mask = m)))
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

