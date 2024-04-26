 subroutine s1
 integer :: a,b,c
 b=3
 a=2
 c=4
 associate ( p2=>c+b )
 associate ( p=> a)
 associate ( p3=> a)
 associate ( p4=> p3+1)
 associate ( p5=> p2+p3)
   if (p/=2) print *,101
   if (p2/=7) print *,101
 !$omp parallel private(a)
   a=1
   if (p/=2) print *,102
   if (a/=1) print *,201
 !$omp end parallel
   if (p/=2) print *,103
 end associate
 end associate
 end associate
 end associate
 end associate
   if (a/=2) print *,103
 end
 call s1
 print *,'pass'
 end

