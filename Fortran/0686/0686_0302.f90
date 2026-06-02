    block data
      integer(1),dimension(3,2,2)::i1=1_1
      integer(2),dimension(3)::i2=1_2
      integer(4),dimension(3,2)::i4=1_4
      integer(8),dimension(3)::i8=1_8
      common /com/ i8,i2,i1
      common /com1/ ijklmn,i4
!$omp threadprivate(/com/,/com1/)
    end

    program ompv2
      integer(1),dimension(3,2,2)::i1
      integer(2),dimension(3)::i2
      integer(4),dimension(3,2)::i4
      integer(8),dimension(3)::i8
      common /com/ i8,i2,i1
      common /com1/ ijklmn,i4
!$omp threadprivate(/com/,/com1/)
      call sub()
      if (any(i1 /= reshape((/(ii,ii=102,113)/),(/3,2,2/)) )) print *,"fail"
      if (any(i2 /= (/102,103,104/) )) print *,"fail"
      if (any(i4 /= reshape((/(ii,ii=102,107)/),(/3,2/)) )) print *,"fail"
      if (any(i8 /= (/102,103,104/)) ) print *,"fail"
      print *,'pass'
    end

    subroutine sub()
      integer(1),dimension(3,2,2)::i1
      integer(2),dimension(3)::i2
      integer(4),dimension(3,2)::i4
      integer(8),dimension(3)::i8
      common /com/ i8,i2,i1
      common /com1/ ijklmn,i4
!$omp threadprivate(/com/,/com1/)
!$omp parallel
      i1=10_1
      i2=10_2
      i4=10_4
      i8=10_8
!$omp single
      call sub_sub(i1,i2,i4,i8)
!$omp end single copyprivate(i1,i2,i4,i8)
      if (any(i1 /= reshape((/(ii,ii=101,112)/),(/3,2,2/)) )) print *,"fail"
      if (any(i2 /= (/101,102,103/) )) print *,"fail"
      if (any(i4 /= reshape((/(ii,ii=101,106)/),(/3,2/)) )) print *,"fail"
      if (any(i8 /= (/101,102,103/)) ) print *,"fail"
      i1=i1+1_1
      i2=i2+1_2
      i4=i4+1_4
      i8=i8+1_8
!$omp end parallel
    end subroutine sub

    subroutine sub_sub(i1,i2,i4,i8)
      integer(1),dimension(3,2,2)::i1
      integer(2),dimension(3)::i2
      integer(4),dimension(3,2)::i4
      integer(8),dimension(3)::i8
      i1=reshape((/(ii,ii=101,112)/),(/3,2,2/))
      i2=(/101,102,103/)
      i4=reshape((/(ii,ii=101,106)/),(/3,2/))
      i8=(/101,102,103/)
    end subroutine sub_sub
