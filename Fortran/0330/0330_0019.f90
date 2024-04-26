integer::m
m=1000
call sub(m)
end
subroutine sub(m)
integer::i,s,m,n,o
s=0
i=0
o=1
n=1
do while (i==size((/(j,j=1,m)/)))
s=s+i
i=i+1
end do
m=1
do i=size((/(j,j=o,m,n)/)),1000,1
s=s+i
end do
if ( s == 500500 ) then
  print *,'pass'
else
  print *,'ng'
  print *,s
endif
end subroutine
