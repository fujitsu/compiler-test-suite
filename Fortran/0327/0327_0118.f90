integer,dimension(4)::a,b
a=(/1,2,3,4/)
b=(/5,6,7,8/)
call sub(a,b)
if ( a(1)==-10 .and. a(2)==2 .and. a(3)==3 .and. a(4)==-40 ) then
  print *,'pass'
else
  print *,'ng',a,b
end if
contains

subroutine sub(a,b)
integer,dimension(4)::a,b,c,r
c=(/-10,-20,-30,-40/)
r=-100
where ((/.true.,.false.,.false.,.true./))
a=c
r=b
end where
print *,r
end subroutine
end
