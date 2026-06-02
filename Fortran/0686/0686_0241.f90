    module mod
      integer(1),dimension(3,2,1)::i1=1_1
      integer(2),dimension(1,2,3)::i2=1_2
      integer(4),dimension(3,2,1)::i4=1_4
      integer(8),dimension(1,2,3)::i8=1_8
    end module mod

      use mod
      call sub()
      if (any( i1 /= 1_1 )) print *,"fail"
      if (any( i2 /= 1_2 )) print *,"fail"
      if (any( i4 /= 1_4 )) print *,"fail"
      if (any( i8 /= 1_8 )) print *,"fail"
      print *,'pass'
    end

    subroutine sub()
     use mod
!$omp parallel private(i1,i2,i4,i8)
      i1=10_1
      i2=10_2
      i4=10_4
      i8=10_8
      call sub_sub(i1,i2,i4,i8)
      if (any( i1 /= 100_1 )) print *,"fail"
      if (any( i2 /= 100_2 )) print *,"fail"
      if (any( i4 /= 100_4 )) print *,"fail"
      if (any( i8 /= 100_8 )) print *,"fail"
!$omp end parallel
    end subroutine sub

    subroutine sub_sub(i1,i2,i4,i8)
      integer(1),dimension(3,2,1)::i1
      integer(2),dimension(1,2,3)::i2
      integer(4),dimension(3,2,1)::i4
      integer(8),dimension(1,2,3)::i8
!$omp single
      i1=100_1
      i2=100_2
      i4=100_4
      i8=100_8
!$omp end single copyprivate(i1,i2,i4,i8)
    end subroutine sub_sub
