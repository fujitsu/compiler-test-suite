  integer::a(2,3) /1,2, 2,3, 3,4/
  integer::b(3,2) /1,2,3, 2,3,4 /
  integer::ab1(2,2)=0
  if (any((/a/)/=(/1,2, 2,3, 3,4/)))print *,'error-1'
  if (any((/b/)/=(/1,2, 3,2, 3,4/)))print *,'error-2'
  if (any(ab1/=0))print *,'error-3'
  print *,'pass'
  end
