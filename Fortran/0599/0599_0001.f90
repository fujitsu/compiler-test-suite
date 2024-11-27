module m1
  type zzz
    integer,allocatable::i(:)
     contains
      final:: f
   end type
 integer::xpno(2)
contains
 subroutine f(d)
  type(zzz)::d(:)
  integer::s
    s=size(d)
!$omp atomic
    xpno(s)=xpno(s)+1
!$omp end atomic
 end
end
use m1
      type(zzz),allocatable:: zz(:)
      xpno=0
      call omp_set_num_threads(4)
      allocate(zz(2))
      call s(k)
!$omp parallel do lastprivate(zz)
      do i=1,k
        deallocate(zz)
        allocate(zz(100:100))
        allocate(zz(100)%i(1))
        zz(100)%i(i)=100
      enddo
!$omp end parallel do 
        if (   (zz(100)%i(1)/=100)) print *,102,zz(100)%i(1)
      if( xpno(1)/=2 .or. xpno(2)/=4 ) print *,'NG:xpno=',xpno
      print *,'pass'
      end
 subroutine s(k)
k=1
end
