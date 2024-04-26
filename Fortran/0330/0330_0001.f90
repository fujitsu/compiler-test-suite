integer::m,n,o
m=1000
n=1000
o=1000
call sub(m,n,o)
end
subroutine sub(m,n,o)
integer::i,j,k,s,m,n,o
s=0
do i=size((/(j,j=1,m)/))-9,1,1
do j=1,size((/(j,j=1,n)/)),1
do k=1,10,size((/(j,j=1,o)/))
s=s+i
end do
end do
end do
if ( s == 0) then
  print *,'pass'
else
  print *,s
endif
end subroutine
