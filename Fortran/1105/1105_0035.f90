module m1
  type zzz
    integer,allocatable::i(:)
   end type
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
      print *,'sngg866p : pass'
      end
 subroutine s(k)
k=1
end
