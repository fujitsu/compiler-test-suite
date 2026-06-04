      integer(1)::i1=0
      integer(2)::i2=0
      integer(8)::i8=0
      real(4)   ::r4=0.0
      real(8)   ::r8=0.0d0
      real(16)  ::r16=0.0q0
      i4=0;ii=0
!$omp parallel
      call sub()
!$omp end parallel
      if (i1/=15_1) print *,"fail"
      if (i2/=15_2) print *,"fail"
      if (i4/=15_4) print *,"fail"
      if (i8/=15_8) print *,"fail"
      if (r4/=15.0) print *,"fail"
      if (r8/=15.0d0) print *,"fail"
      if (r16/=15.0q0) print *,"fail"
      if (ii/=15_4) print *,"fail"
      print *,'pass'
      contains

      subroutine sub()
!$omp do
      do j=1,15
!$omp atomic
      i1=i1+1
!$omp atomic
      i2=i2+1
!$omp atomic
      i4=i4+1
!$omp atomic
      i8=i8+1
!$omp atomic
      r4=r4+1
!$omp atomic
      r8=r8+1
!$omp atomic
      r16=r16+1
!$omp atomic
      ii=ii+1
      enddo
      end subroutine

     end
