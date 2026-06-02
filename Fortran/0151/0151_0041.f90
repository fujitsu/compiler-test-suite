subroutine s1()
parameter(k=3)
block
integer,save:: a(3),b(k)
character(k),save::  aa(3),bb(k)
!$omp threadprivate (a,b,aa,bb)
a=1
b=2
aa='12'
bb='34'
block
  if (aa(3)/='12') print *,101
  if (bb(3)/='34') print *,102
  if (a(3)/=1) print *,201
  if (b(3)/=2) print *,202
end block
end block
end
call s1()
print *,'pass'
end

