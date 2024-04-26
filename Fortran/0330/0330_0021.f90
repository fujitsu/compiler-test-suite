integer::m=1000
call sub(m)
end

subroutine sub(m)
integer::m
integer::i=0,s=0

do while ( i < size((/(j,j=1,m/100)/)) )
  do while ( i < size((/(j,j=1,m/10)/)) )
    do while ( i < size((/(j,j=1,m/1)/)) )
      i = i + 1
      s = s + i
    end do
    end do
end do

if ( s == 500500 ) then
  print *,'pass'
else
  print *,i,s
endif
end subroutine
