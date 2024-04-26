module m1
  integer :: a,b(100),c,d=77
end

module m2
  use m1,x=>a,y=>b,w=>d
end


subroutine sub1
  use m2,a=>x,b=>y,d=>w
  a=11
  b=22
  c=33
  if (a/=11) print *,1
  if (any(b/=22)) print *,2
  if (c/=33) print *,3
  if (d/=77) print *,4
end

subroutine sub2
  use m1
  use m2,a=>x,b=>y,d=>w
  if (a/=11) print *,1
  if (any(b/=22)) print *,2
  if (c/=33) print *,3
  if (d/=77) print *,4
end

call sub1
call sub2
print *,'pass'
end
