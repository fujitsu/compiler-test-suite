      integer(1),dimension(3)::i1=1_1
      integer(2),dimension(3)::i2=1_2
      integer(4),dimension(2)::i4=1_4
      integer(8),dimension(2)::i8=1_8
      call sub1(i1,i2,i4,i8,3,2)
!$omp parallel private(i1,i2,i4,i8)
      call sub2(i1,i2,i4,i8,3,2)
!$omp end parallel
      if (any( i1 /= 1_1 )) print *,"fail"
      if (any( i2 /= 1_2 )) print *,"fail"
      if (any( i4 /= 1_4 )) print *,"fail"
      if (any( i8 /= 1_8 )) print *,"fail"
      call sub3(3,2)
      print *,'pass'
    end program

    subroutine sub1(i1,i2,i4,i8,len3,len2)
      integer(1),dimension(len3)::i1
      integer(2),dimension(   3)::i2
      integer(4),dimension(len2)::i4
      integer(8),dimension(   2)::i8
!$omp parallel private(i1,i2,i4,i8)
      i1=(/10_1,11_1,12_1/)
      i2=(/10_2,11_2,12_2/)
      i4=(/10_4,11_4/)
      i8=(/10_8,11_8/)
!$omp single
      i1=100_1
      i2=100_2
      i4=100_4
      i8=100_8
!$omp end single copyprivate(i1,i2,i4,i8)
      if (any( i1 /= 100_1 )) print *,"fail"
      if (any( i2 /= 100_2 )) print *,"fail"
      if (any( i4 /= 100_4 )) print *,"fail"
      if (any( i8 /= 100_8 )) print *,"fail"
!$omp end parallel
    end subroutine sub1

    subroutine sub2(i1,i2,i4,i8,len3,len2)
      integer(1),dimension(len3)::i1
      integer(2),dimension(   3)::i2
      integer(4),dimension(len2)::i4
      integer(8),dimension(   2)::i8
      i1=(/10_1,11_1,12_1/)
      i2=(/10_2,11_2,12_2/)
      i4=(/10_4,11_4/)
      i8=(/10_8,11_8/)
!$omp single
      i1=100_1
      i2=100_2
      i4=100_4
      i8=100_8
!$omp end single copyprivate(i1,i2,i4,i8)
      if (any( i1 /= 100_1 )) print *,"fail"
      if (any( i2 /= 100_2 )) print *,"fail"
      if (any( i4 /= 100_4 )) print *,"fail"
      if (any( i8 /= 100_8 )) print *,"fail"
    end subroutine sub2

    subroutine sub3(len3,len2)
      integer(1),dimension(len3)::i1
      integer(2),dimension(len3)::i2
      integer(4),dimension(len2)::i4
      integer(8),dimension(len2)::i8
      i1=1_1 ; i2=1_2 ; i4=1_4 ; i8=1_8
!$omp parallel private(i1,i2,i4,i8)
      i1=(/10_1,11_1,12_1/)
      i2=(/10_2,11_2,12_2/)
      i4=(/10_4,11_4/)
      i8=(/10_8,11_8/)
!$omp single
      i1=100_1
      i2=100_2
      i4=100_4
      i8=100_8
!$omp end single copyprivate(i1,i2,i4,i8)
      if (any( i1 /= 100_1 )) print *,"fail"
      if (any( i2 /= 100_2 )) print *,"fail"
      if (any( i4 /= 100_4 )) print *,"fail"
      if (any( i8 /= 100_8 )) print *,"fail"
!$omp end parallel
      if (any( i1 /= 1_1 )) print *,"fail"
      if (any( i2 /= 1_2 )) print *,"fail"
      if (any( i4 /= 1_4 )) print *,"fail"
      if (any( i8 /= 1_8 )) print *,"fail"
    end subroutine sub3
