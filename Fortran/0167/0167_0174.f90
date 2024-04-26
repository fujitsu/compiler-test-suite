module m1
  integer :: a,b(100),c,d=77,e
  equivalence(a,e)
  equivalence(b,c,d)
end

module m2
  use m1,x=>a,y=>b,w=>d,v=>e
end

subroutine sub1
  use m1,aa=>a,bb=>b,dd=>d
  use m2
  aa=11
  if (aa/=11) print *,1
  if (x/=11) print *,1
  if (e/=11) print *,1
  if (v/=11) print *,1
  if (bb(1)/=77) print *,2
  if (y(1)/=77) print *,2
  if (c/=77) print *,3
  if (dd/=77) print *,4
  if (w/=77) print *,4
  bb=22
  if (any(bb/=22)) print *,2
  if (any(y/=22)) print *,2
  if (c/=22) print *,3
  if (dd/=22) print *,4
  if (w/=22) print *,4
end

subroutine sub2
  use m1
  use m2,only:xx=>x,yy=>y
  if (xx/=11) print *,11
  if (a/=11) print *,11
  if (e/=11) print *,11
  if (any(yy/=22)) print *,2
  if (any(b/=22)) print *,2
  if (c/=22) print *,3
  if (d/=22) print *,4
end

call sub1
call sub2
print *,'pass'
end
