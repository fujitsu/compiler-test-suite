subroutine sub(nn)
  integer(8)::i,nn
  real(8)::array(nn-1,nn,nn+1)
  real(8)::array1(nn-1,nn,nn+1)
  integer::mask(9,10,11)=1
array1=0

  do concurrent(k=1:nn+1)
     do concurrent(i=1:nn-1,j=1:nn,mask(i,j,k)==1)
        array(i,j,k) = array1(i,j,k) + 1
     end do
  end do

  write(1,*)merge("OK", "NG", all(array == 1.))
end subroutine sub
call sub(10_8)
print *,'pass'
end

