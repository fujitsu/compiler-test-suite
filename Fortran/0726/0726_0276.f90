 do i1=1,3
 do i2=1,3
 call ss1(i1,i2)
 call ss2(i1,i2)
 end do
 end do
 print *,'pass'
 end
 subroutine ss1(i,j)
 entry      ss2(i,j)
 interface
 pure integer function fun(i,j)
 integer,intent(in)::i,j
 end function
 end interface
  integer::a(-fun(i,j):+fun(i,j))
  if (any(shape(a)/=(/(i+j)*2+1/)))write(6,*) "NG"
  if (any(lbound(a)/=(/-(i+j)/)))write(6,*) "NG"
  if (any(ubound(a)/=(/+(i+j)/)))write(6,*) "NG"
  a=(/(ii,ii=-(i+j),+(i+j))/)
  if (any(a/=(/(ii,ii=-(i+j),+(i+j))/)))write(6,*) "NG"
  end
 pure integer function fun(i,j)
 integer,intent(in)::i,j
 fun=i+j
 end function
