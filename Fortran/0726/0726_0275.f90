 call ss1(1,2)
 print *,'pass'
 end
 subroutine ss1(i,j)
 interface
 pure integer function fun(i,j)
 integer,intent(in)::i,j
 end function
 end interface
  integer::a(-fun(i,j):+fun(i,j))
  if (any(shape(a)/=(/7/)))write(6,*) "NG"
  if (any(lbound(a)/=(/-3/)))write(6,*) "NG"
  if (any(ubound(a)/=(/+3/)))write(6,*) "NG"
  a=(/1,2,3,4,5,6,7/)
  if (any(a/=(/1,2,3,4,5,6,7/)))write(6,*) "NG"
  end
 pure integer function fun(i,j)
 integer,intent(in)::i,j
 fun=i+j
 end function
