integer::m
m=1000
call sub(m)
end
subroutine sub(m)
integer::i,s,m
integer::o,n
o=m
n=m
s=0
do i=1,1000,size((/(j,j=1,m,1)/))
s=s+i
end do
do i=size((/(j,j=o,m,n)/)),1000,1
s=s+i
end do
if ( s == 500501 ) then
  print *,'pass'
else
  print *,'ng'
  print *,s
endif
end subroutine
