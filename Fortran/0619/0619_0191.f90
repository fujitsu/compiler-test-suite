subroutine s1
  type x1
    integer:: y11(2,3)
  end type
  type x2
    integer::y21
    type(x1):: y22(2,3)
  end type
  integer :: a1(2),nn(2)
  n1=1;n2=2;n3=3
  a1(1:2)=1
  nn=a1(n1:n2)
  if (any(nn/=1))print *,102
end
call s1
print *,'pass'
end
