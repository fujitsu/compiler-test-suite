      call sub()
      print *,'pass'
      contains
        subroutine sub()
        integer(1),save::i1(3)
        integer(2),save::i2(3)
        integer(4),save::i4(2)
        integer(8),save::i8(1)
  !$omp threadprivate(i1,i2,i4,i8)
        i1=1_1
        i2=1_2
        i4=1_4
        i8=1_8
  !$omp parallel copyin(i1,i2,i4,i8)
        if (any(i1 /= 1_1)) print *,"fail"
        if (any(i2 /= 1_2)) print *,"fail"
        if (any(i4 /= 1_4)) print *,"fail"
        if (any(i8 /= 1_8)) print *,"fail"
  !$omp single
        i1=(/100_1,101_1,102_1/)
        i2=(/100_2,101_2,102_2/)
        i4=(/100_4,101_4/)
        i8=(/100_8/)
  !$omp end single copyprivate(i1,i2,i4,i8)
        if (any(i1 /= (/100_1,101_1,102_1/))) print *,"fail"
        if (any(i2 /= (/100_2,101_2,102_2/))) print *,"fail"
        if (any(i4 /= (/100_4,101_4/))) print *,"fail"
        if (any(i8 /= (/100_8/))) print *,"fail"
  !$omp end parallel
        end subroutine sub
      end
