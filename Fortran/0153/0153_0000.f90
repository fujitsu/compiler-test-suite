subroutine s1
type point
   character(*,4) :: x(1)*2
end type point
type line
   type(point) :: p1(1**1) 
end type line
type(line):: m(2) &
  = line(p1= [point(x=[4_"12"]) ]) 
if (m(1)%p1(1)%x(1)/=4_"12") print *,101
if (m(2)%p1(1)%x(1)/=4_"12") print *,111
end
call s1
print *,'pass'
end
