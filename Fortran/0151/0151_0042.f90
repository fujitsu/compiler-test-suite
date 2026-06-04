subroutine s1()
parameter(k=3)
block
integer::omp_get_thread_num 
integer,save:: a(3),b(k)
character(k),save::  aa(3),bb(k)
!$omp threadprivate (a,b,aa,bb)
a=omp_get_thread_num() +1
b=omp_get_thread_num() +2
aa='12'
bb='34'
block
  if (aa(3)/='12') print *,101
  if (bb(3)/='34') print *,102
  if (any(a/=omp_get_thread_num() +1)) print *,201
  if (any(b/=omp_get_thread_num() +2)) print *,202
end block
end block
end
call s1()
print *,'pass'
end
