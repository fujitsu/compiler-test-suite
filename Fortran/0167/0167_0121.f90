module m
  integer a,b,c
end

subroutine sub
  use m,only:b,c
  b=22
  c=33
  if (b/=22) print *,2
  if (c/=33) print *,3
end subroutine

subroutine sub2
  use m,only:a
  a=11
  if (a/=11) print *,1
end subroutine


call sub
call sub2
print *,'pass'
end
