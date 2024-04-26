module m1
  integer :: b(100),c,d=77,a,e
  equivalence(a,e)
end

module m2
  use m1,x=>a,y=>b,w=>d,v=>e
end


subroutine sub1
  use m2,a=>x,b=>y,d=>w
  a=11
  b=22
  c=33
  if (a/=11) print *,1
  if (v/=11) print *,1
  if (any(b/=22)) print *,2
  if (c/=33) print *,3
  if (d/=77) print *,4
end

subroutine sub2
  use m1
  use m2,a=>x,b=>y,d=>w
  if (a/=11) print *,1
  if (e/=11) print *,1
  if (v/=11) print *,1
  if (any(b/=22)) print *,2
  if (c/=33) print *,3
  if (d/=77) print *,4
end

call sub1
call sub2
print *,'pass'
end
