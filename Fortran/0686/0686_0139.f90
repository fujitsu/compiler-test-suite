      integer(1)::i1=0
      integer(2)::i2=0
      integer(4)::i4=0,ii=0
      integer(8)::i8=0
      real(4)   ::r4=0.0
      real(8)   ::r8=0.0d0
      real(16)  ::r16=0.0q0

!$omp parallel do
      do j=1,10
!$omp atomic
      i1=i1+j
!$omp atomic
      i2=i2+j
!$omp atomic
      i4=i4+j
!$omp atomic
      i8=i8+j
!$omp atomic
      r4=r4+j
!$omp atomic
      r8=r8+j
!$omp atomic
      r16=r16+j
!$omp atomic
      ii=ii+j
      enddo

      if (i1/=55_1) print *,"fail"
      if (i2/=55_2) print *,"fail"
      if (i4/=55_4) print *,"fail"
      if (i8/=55_8) print *,"fail"
      if (r4/=55.0) print *,"fail"
      if (r8/=55.0d0) print *,"fail"
      if (r16/=55.0q0) print *,"fail"
      print *,'pass'
    end
