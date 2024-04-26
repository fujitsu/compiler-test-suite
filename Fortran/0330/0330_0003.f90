integer::m
m=1000
call sub(m)
end
subroutine sub(m)
integer::i,s,m
s=0
do i=1,size((/(k,k=1,m),(k,k=1,m),(k,k=1,m)/))
s=s+i
end do
if ( s == 4501500 ) then
  print *,'pass'
else
  print *,s
endif
end subroutine
