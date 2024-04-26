integer::n=120
call sub(n)
end

subroutine sub(n)
integer::n
integer::s=0
integer::i=1

do while (  i < size((/(j,j=1,n)/)) )
  s = s + i
  i = i + 1
  if ( i == 101 ) then
    exit
  endif
end do
if ( s == 5050 ) then
  print *,'pass'
else
  print *,s
endif
end subroutine
