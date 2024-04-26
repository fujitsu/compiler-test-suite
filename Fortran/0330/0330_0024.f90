integer::m
m=1000
call sub(m)
end
subroutine sub(m)
integer::i,s,m
s=0
i=1
do while ( i <= size((/(k,k=1,m),(k,k=1,m),(k,k=1,m)/)) )
s=s+i
i=i+1
end do
if ( s == 4501500 ) then
  print *,'pass'
else
  print *,s
endif
end subroutine
