subroutine s1
  integer :: a1(2,3),nn(2,2)
  n1=1;n2=2;n3=3
  a1(1:2,2:3)=1
  nn=a1(n1:n2:n1,n2:n3)
  if (any(nn/=1))print *,102
end
call s1
print *,'pass'
end
