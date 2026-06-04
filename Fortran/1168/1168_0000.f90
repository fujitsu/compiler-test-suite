subroutine s()
type x
  integer::x1(2)
end type
type(x),parameter::v=x(1)
type y
  character::y1 
end type
type(y),parameter::w=y('1')
associate (n1 =>v )
 block
  integer ::p1(size(n1%x1    ))
  integer ::p2(    (n1%x1(1) ))
 p1=1
 p2=2
if (size(p1)/=2) print *,3929
if (size(p2)/=1        ) print *,3928
 write(1,*) p1,p2
 end block
end associate
associate (n2 =>w )
 block
  integer ::q1(len (n2%y1    ))
  integer ::q2(ichar    (n2%y1(:) ))
 q1=1
 q2=2
if (size(q1)/=1) print *,2929
if (size(q2)/=ichar('1')) print *,2928
 write(1,*) q1,q2
 end block
end associate
end
call s()
print *,'sngg133r : pass'
end
