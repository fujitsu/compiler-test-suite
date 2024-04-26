module m
  integer a,b,c,x
  equivalence(a,x)
end

subroutine sub
  use m,only:b,c,x
  x=11
  b=22
  c=33
  if (x/=11) print *,1
  if (b/=22) print *,2
  if (c/=33) print *,3
end subroutine

subroutine sub2
  use m,only:a
  if (a/=11) print *,4
end subroutine


call sub
call sub2
print *,'pass'
end
