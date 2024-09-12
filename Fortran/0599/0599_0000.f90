module m1
  type zzz
    integer::i(4)
     contains
      final:: f
   end type
   integer::xpno
contains
 subroutine f(d)
  type(zzz)::d(:)
    if( size(d)==2 ) then
!$omp atomic
      xpno=xpno+1
!$omp end atomic
    endif
 end
end
use m1
      type(zzz),allocatable:: zz(:)
      xpno=0
      allocate(zz(2))
      call s(k)
!$omp parallel do lastprivate(zz)
      do i=1,k
        zz%i(i)=100
      enddo
!$omp end parallel do 
        if (   (zz(1)%i(1)/=100)) print *,102,zz%i(1)
        if (   (zz(2)%i(1)/=100)) print *,103,zz%i(1)
      if( xpno/=1 ) print *,'NG:xpno=',xpno
      print *,'pass'
      end
 subroutine s(k)
k=1
end
