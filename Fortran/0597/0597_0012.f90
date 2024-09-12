 module m1
   type x
      integer::x1
      contains
        final:: xp
   end type
   integer::xpno
 contains
   subroutine xp(d)
     type(x):: d
     d%x1=0
       !$omp atomic
     xpno=xpno+1
   end subroutine
 end module m1
 subroutine s1()
 use m1
   class(x),allocatable :: v
   allocate(v)
   v%x1=1
 !$omp parallel  private(v)
   v%x1=2
 !$omp end parallel
 end
 use m1
 interface
 subroutine s1()
 end
 end interface
 xpno=0
 call omp_set_num_threads(4)
 call s1()
 if(xpno /= 1+4 ) print *,'NG : xpno=',xpno
 print *,'pass'
 end
