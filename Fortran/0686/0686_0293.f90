    block data
      integer(1)::i1
      integer(2)::i2
      integer(8)::i8
      common /com/ i8,i2,i1
!$omp threadprivate(/com/)
      data i1 /1_1/
      data i2 /1_2/
      data i8 /1_8/
    end

    program ompv2
      integer(1)::i1
      integer(2)::i2
      integer(4)::i4=1_4
      integer(8)::i8
      common /com/ i8,i2,i1
!$omp threadprivate(/com/)
      call sub()
      if (i1 /= 100_1) print *,"fail"
      if (i2 /= 100_2) print *,"fail"
      if (i4 /= 1_4) print *,"fail"
      if (i8 /= 100_8) print *,"fail"
      print *,'pass'
    end

    subroutine sub()
      integer(1)::i1
      integer(2)::i2
      integer(4)::i4
      integer(8)::i8
      common /com/ i8,i2,i1
!$omp threadprivate(/com/)
!$omp parallel private(i4)
      i1=10_1
      i2=10_2
      i4=10_4
      i8=10_8
!$omp single
      call sub_sub(i1,i2,i4,i8)
!$omp end single copyprivate(i1,i2,i4,i8)
      if (i1 /= 100_1) print *,"fail"
      if (i2 /= 100_2) print *,"fail"
      if (i4 /= 100_4) print *,"fail"
      if (i8 /= 100_8) print *,"fail"
!$omp end parallel
    end subroutine sub

    subroutine sub_sub(i1,i2,i4,i8)
     integer(1)::i1
     integer(2)::i2
     integer(4)::i4
     integer(8)::i8
      i1=100_1
      i2=100_2
      i4=100_4
      i8=100_8
    end subroutine sub_sub
