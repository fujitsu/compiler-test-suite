subroutine sub(a,b)
character*4 a(5), b(5,5)
a = 'l=4'
b = a(3)
end subroutine

program main
character*4 a(5), b(5,5)
a = 'abcde'
b = 'vwxyz'
call sub(a,b)
if ((a(1) .eq. 'l=4').and.(b(2,2) .eq. 'l=4')) then
  print *,"ok"
else
  print *,"ng", a(1), ",", b(2,2)
endif
end program
