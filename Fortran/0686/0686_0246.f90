      call sub()
      print *,'pass'
      contains
        subroutine sub()
        integer(1),save::i1
        integer(2),save::i2
        integer(4),save::i4
        integer(8),save::i8
  !$omp threadprivate(i1,i2,i4,i8)
        i1=1_1
        i2=1_2
        i4=1_4
        i8=1_8
  !$omp parallel
        i1=10_1
        i2=10_2
        i4=10_4
        i8=10_8
  !$omp single
        i1=100_1
        i2=100_2
        i4=100_4
        i8=100_8
  !$omp end single copyprivate(i1,i2,i4,i8)
        if (i1 /= 100_1) print *,"fail"
        if (i2 /= 100_2) print *,"fail"
        if (i4 /= 100_4) print *,"fail"
        if (i8 /= 100_8) print *,"fail"
  !$omp end parallel
        if (i1 /= 100_1) print *,"fail"
        if (i2 /= 100_2) print *,"fail"
        if (i4 /= 100_4) print *,"fail"
        if (i8 /= 100_8) print *,"fail"
        end subroutine sub
      end
