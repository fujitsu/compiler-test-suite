integer::m
m=1000
call sub(m)
end
subroutine sub(m)
integer::i,s,m
s=0
do i=1,size((/(j,j=1,m)/)),1
s=s+i
end do
if ( s == 500500 ) then
  print *,'pass'
else
  print *,s
endif
end subroutine
