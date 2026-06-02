subroutine s(k)
type y
  character::y1 
end type
type(y),parameter::w=y('1')
  integer ::w2(ichar    (w%y1(1:k) ))
 w2=2
if (size(w2)/=ichar('1')) print *,2927

associate (n2 =>w )
 block
  integer ::q2(ichar    (n2%y1(1:k) ))
 q2=2
if (size(q2)/=ichar('1')) print *,2928
 write(3,*) ,q2
 end block
end associate

associate (n3 =>w )
 block
  integer ::q3(ichar    (n3%y1(1:1) ))
 q3=2
if (size(q3)/=ichar('1')) print *,2927
 write(3,*) ,q3
 end block
end associate
end
call s(1)
print *,'sngg135r : pass'
end
