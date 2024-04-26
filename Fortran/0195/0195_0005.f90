 subroutine s1
 integer :: a,b,c
 b=3
 a=2
 c=4
 associate ( p=> a)
 associate ( p2=>f(c,b) )
 associate ( p3=>b )
   if (p/=2) print *,101
   if (p2/=7) print *,101
   if (p3/=3) print *,101
 !$omp parallel private(a)
   a=1
   if (p/=2) print *,102
   if (a/=1) print *,201
 !$omp end parallel
   if (p/=2) print *,103
 end associate
 end associate
 end associate
   if (a/=2) print *,103

 contains
 function f(d1,d2)
 integer::d1,d2,f
 f=d1+d2
 end function
 end
 call s1
 print *,'pass'
 end

