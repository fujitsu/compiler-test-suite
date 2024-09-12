  integer(8),parameter::i1=rank([1_8])
  integer::i2
  i2=rank(A=[1])
if(i1/=i2) print *,'err',i1,i2
print *,'pass'
end program
