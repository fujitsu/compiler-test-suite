integer::m
m= 999
call sub(m)
end

subroutine sub(m)
integer::m
integer::s=0,n
integer::i=0,j=0
do while(i<=size((/(n,n=1,m)/)))
  i = i +1
  do while(j<=size((/(n,n=1,m)/)) )
    j = j + 1
    s=s+i*j
  end do
end do
if ( s == 500500 ) then
  print *,'pass'
else
  print *,'ng'
  print *,s
endif
end subroutine
