module m1
  integer :: a,b(100),c,d=77,e
  equivalence(a,e,b,c,d)
end

module m2
  use m1,x=>a,y=>b,w=>d,v=>e
end


subroutine sub1
  use m2,a=>x,b=>y,d=>w
  if (a/=77) print *,1
  if (v/=77) print *,1
  if (b(1)/=77) print *,1
  if (c/=77) print *,3
  if (d/=77) print *,4
  b=22
  if (any(b/=22)) print *,2
end

subroutine sub2
  use m1
  use m2,a=>x,b=>y,d=>w
  if (a/=22) print *,1
  if (e/=22) print *,1
  if (v/=22) print *,1
  if (any(b/=22)) print *,2
  if (c/=22) print *,3
  if (d/=22) print *,4
end

call sub1
call sub2
print *,'pass'
end
