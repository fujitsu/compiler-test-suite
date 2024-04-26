module m
  integer a,b,c,x
  equivalence(a,x)
  equivalence(b,c)
end

subroutine sub
  use m,only:b,z=>c,xx=>x
  integer c
  xx=11
  b=22
  if (xx/=11) print *,1
  if (b/=22) print *,2
  if (z/=22) print *,3
end subroutine

subroutine sub2
  use m,only:a,b,w=>c
  integer c
  a=11
  if (a/=11) print *,1
  if (b/=22) print *,2
  if (w/=22) print *,3
end subroutine


call sub
call sub2
print *,'pass'
end
