      type zzz
        integer::i=100
      end type
      type(zzz) zz
      integer OMP_GET_THREAD_NUM
      if (zz%i/=100) print *,"fail"
      zz%i = 200
 !$   call OMP_SET_NUM_THREADS(1)
!$omp parallel do lastprivate(zz,i)
      do i=1,10
        zz%i = zz%i + 1
      enddo
!$omp end parallel do
      if (zz%i/=110.or.i/=11) then
        print *,zz%i
        print *,i
        print *,"fail"
      endif
      print *,'pass'
      end
