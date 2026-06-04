subroutine s()
type x
  integer::x1(2)
end type
type(x),parameter::v=x(1)
associate (n1 =>v )
 block
  integer ::p2(    (n1%x1(1) ))
 p2=2
 write(7,*) p2
 end block
end associate
end
call s()
print *,'sngg139r : pass'
end
