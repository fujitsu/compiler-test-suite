integer::m,n,o
m=10
n=10
o=10
call sub(m,n,o)
end
subroutine sub(m,n,o)
integer::i,s,m,n,o
s=0
do i=size((/(j,j=1,m)/)),1000,1
s=s+i
end do
do i=size((/(j,j=o,m,n)/)),1000,1
s=s+i
end do
if ( s == 1000955 ) then
  print *,'pass'
else
  print *,'ng'
  print *,s
endif
end subroutine
