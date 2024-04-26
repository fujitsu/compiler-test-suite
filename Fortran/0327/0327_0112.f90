module m
contains
subroutine sub(*,i,*,j,s)
  integer :: i,j,s
entry ent(*,i,*,j,s)
  print *,j
  if(i==1) then
    s=s+1
    return 1
  end if
  if(i==2) then
    s=s+2
    return 4
  end if
  return 2
end subroutine
end

use m
integer :: i,s
s=0
do i=1,3
call ent(*10,i,*30,i,s)
10 s=s+16
end do
30 s=s+4
if ( s==39 ) then
  print *,'pass'
else
  print *,'ng',s,i
end if
end
