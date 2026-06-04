module m1
  type zzz
    integer::i(4)
     contains
   end type
 end
use m1
      type(zzz),allocatable:: zz(:)
      allocate(zz(2))
      k=1
!$omp parallel do lastprivate(zz)
      do i=1,k
        zz%i(i)=100
      enddo
!$omp end parallel do 
        if (   (zz(1)%i(1)/=100)) print *,102,zz%i(1)
        if (   (zz(2)%i(1)/=100)) print *,103,zz%i(1)
      print *,'sngg966p : pass'
      end
