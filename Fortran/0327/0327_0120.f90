module m
contains
subroutine sub(a,b)
integer,dimension(4)::a,b,c,r
c=(/-10,-20,-30,-40/)
r=-100
where ((/.true.,.false.,.false.,.true./))
a=c
end where
entry ent(a,b)
if (a(1) .ne. -100) then
  a(4)=-200
end if
r=b
print *,r
end subroutine
end

use m
integer,dimension(4)::a,b
a=(/1,2,3,4/)
b=(/5,6,7,8/)
call sub(a,b)
call ent(a,b)
if ( a(1)==-10 .and. a(2)==2 .and. a(3)==3 .and. a(4)==-200 ) then
  print *,'pass'
else
  print *,'ng',a,b
end if
end
