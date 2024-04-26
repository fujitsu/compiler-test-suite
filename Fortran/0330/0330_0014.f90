integer::m,n
m=1000
n=m
call sub(m,n)
end
subroutine sub(m,n)
integer::i,j,k,s,m,n,o
o=n
s=0
do i=size((/(j,j=1,m)/)),1000,1
do j=1,size((/(j,j=1,n)/)),1
s=s+i
end do
end do
do i=size((/(j,j=o,m,n)/)),1,1
s=s+i
end do
if ( s == 1000001 ) then
  print *,'pass'
else
  print *,'ng'
  print *,s
endif
end subroutine
