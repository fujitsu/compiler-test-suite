subroutine sub1(x,a)
real x(10)
do i=1,10
  if(a.ge.0.0) then
    x(i)=sqrt(a)
  endif
end do
if((x(1).gt.2.000001).or.(x(1).lt.1.999999)) print*,' ng 1 '
end

subroutine sub2(x,a)
real x(10)
do i=1,10
    x(i)=sqrt(a)
end do
if((x(1).gt.2.000001).or.(x(1).lt.1.999999)) print*,' ng 2 '
end

real x(10)
a=4.0
call sub1(x,a)
call sub2(x,a)
print*, ' pass '
end
