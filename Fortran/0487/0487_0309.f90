      type zzz
        integer::i(4)
      end type
      type(zzz) zz
      call s(k)
!$omp parallel do lastprivate(zz)
      do i=1,k
        zz%i(i)=100
      enddo
!$omp end parallel do 
        if (   (zz%i(1)/=100)) print *,102,zz%i(1)
      print *,'pass'
      end
 subroutine s(k)
k=1
end
