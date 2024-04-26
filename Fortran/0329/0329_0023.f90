pure subroutine a(i,ar)
integer,intent(in)::i
integer,intent(out)::ar,br
ar=1+i
return

entry b(i,br)
br=2+i
return 
end subroutine

interface
pure subroutine a(i,ar)
integer,intent(in)::i
integer,intent(out)::ar
end subroutine
pure subroutine b(i,br)
integer,intent(in)::i
integer,intent(out)::br
end subroutine
end interface
integer::n,ii,ar,br
n=0
do ii=1,10
call a(1,ar)
call b(1,br)
if ( ar == 2 .and. br == 3) then
 n=n+1 
endif
end do
if ( n==10) then
  print *,'pass'
else
  print *,'ng'
endif
end
