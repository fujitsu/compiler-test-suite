pure function a(i)
integer,intent(in)::i
integer::a,b
a=1+i
return

entry b(i)
a=2+i
return 
end function

interface
pure function a(i)
integer,intent(in)::i
integer::a
end function
pure function b(i)
integer,intent(in)::i
integer::b
end function
end interface
if ( a(1) == 2 .and. b(1)==3 ) then
  print *,'pass'
else
  print *,'ng'
endif
end
