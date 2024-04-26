pure function a(i)
integer,intent(in)::i
integer::a
a=1+i
end function

interface
pure function a(i)
integer,intent(in)::i
integer::a
end function
pure function b(i)
integer,intent(in)::i
end function
end interface
integer::n,ii
n=0
do ii=1,10
if ( a(1) == 2 ) then
 n=n+1 
endif
end do
if ( n==10) then
  print *,'pass'
else
  print *,'ng'
endif
end
