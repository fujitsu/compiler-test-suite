module m1
  integer :: b(100),c,d=44,a,e
  equivalence(a,e)
end

module m2
  use m1,x=>a,y=>b,z=>c,v=>e
end

module m3
  use m1,x=>a,y=>b,z=>c,v=>e
end

subroutine sub1
  use m2
  use m3
  x=11
  y=22
  z=33
  if (x/=11) print *,1
  if (v/=11) print *,1
  if (any(y/=22)) print *,2
  if (z/=33) print *,3
  if (d/=44) print *,4
end

subroutine sub2
  use m1
  use m2
  use m3
  if (x/=11) print *,1
  if (a/=11) print *,1
  if (e/=11) print *,1
  if (v/=11) print *,1
  if (any(y/=22)) print *,2
  if (any(b/=22)) print *,2
  if (z/=33) print *,3
  if (c/=33) print *,3
  if (d/=44) print *,4
end

call sub1
call sub2
print *,'pass'
end
