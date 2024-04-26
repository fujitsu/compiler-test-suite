module m1
  integer :: a,b(100),c,d=44,e
  equivalence(a,e,b,c,d)
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
  if (y(1)/=44) print *,2
  if (x/=44) print *,1
  if (v/=44) print *,1
  if (z/=44) print *,3
  if (d/=44) print *,4
  y=22
  if (any(y/=22)) print *,2
  if (x/=22) print *,1
  if (v/=22) print *,1
  if (z/=22) print *,3
  if (d/=22) print *,4
end

subroutine sub2
  use m1
  use m2
  use m3
  if (x/=22) print *,1
  if (a/=22) print *,1
  if (e/=22) print *,1
  if (v/=22) print *,1
  if (any(y/=22)) print *,2
  if (any(b/=22)) print *,2
  if (z/=22) print *,3
  if (c/=22) print *,3
  if (d/=22) print *,4
end

call sub1
call sub2
print *,'pass'
end
