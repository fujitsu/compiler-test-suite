      call sub()
      print *,'pass'
    end
    subroutine sub()
      integer(1),dimension(3,2)::i1
      integer(2),dimension(3,2)::i2
      integer(4),dimension(3,1)::i4
      integer(8),dimension(3,1)::i8
      i1=1_1
      i2=1_2
      i4=1_4
      i8=1_8
!$omp parallel private(i1,i2,i4,i8)
      i1=10_1
      i2=10_2
      i4=10_4
      i8=10_8
!$omp single
      i1(:,1)=(/101_1,102_1,103_1/)
      i1(:,2)=(/104_1,105_1,106_1/)
      i2(:,1)=(/101_2,102_2,103_2/)
      i2(:,2)=(/104_2,105_2,106_2/)
      i4(:,1)=(/101_4,102_4,103_4/)
      i8(:,1)=(/101_8,102_8,103_8/)
!$omp end single copyprivate(i1,i2,i4,i8)
      if (any(i1 /= reshape( (/101_1,102_1,103_1,104_1,105_1,106_1/),(/3,2/) ))) print *,"fail"
      if (any(i2 /= reshape( (/101_2,102_2,103_2,104_2,105_2,106_2/),(/3,2/) ))) print *,"fail"
      if (any(i4 /= reshape( (/101_4,102_4,103_4/),(/3,1/) ))) print *,"fail"
      if (any(i8 /= reshape( (/101_8,102_8,103_8/),(/3,1/) ))) print *,"fail"
!$omp end parallel
      if (any(i1 /= 1_1)) print *,"fail"
      if (any(i2 /= 1_2)) print *,"fail"
      if (any(i4 /= 1_4)) print *,"fail"
      if (any(i8 /= 1_8)) print *,"fail"
    end subroutine sub
