    module mod1
      integer(1),target ,dimension(2,2,2)::i11=1_1,i13
      integer(1),target ,dimension(2)::i12=10_1
      integer(2),target ,dimension(2)::i21=1_2,i23=(/101_2,102_2/)
      integer(2),target ,dimension(1)::i22=10_2
      integer(4),target ,dimension(1)::i41=1_4,i43=(/101_4/)
      integer(4),target ,dimension(2)::i42=10_4
      integer(8),target ,dimension(2)::i81=1_8,i83=(/101_8,102_8/)
      integer(8),target ,dimension(1)::i82=10_8
      integer(4),external::OMP_GET_THREAD_NUM
    end module mod1

    module mod2
     use mod1
     integer(1),allocatable,dimension(:,:,:)::p_i1
     integer(2),allocatable,dimension(:)::p_i2
     integer(4),allocatable,dimension(:)::p_i4
     integer(8),allocatable,dimension(:)::p_i8
!$omp threadprivate(p_i1,p_i2,p_i4,p_i8)
     contains
      subroutine initialize()
        i13=reshape((/(i,i=101,108)/),(/2,2,2/))
      end subroutine initialize
      subroutine finalize()
        if (size(p_i1) /= 8) print *,"fail"
        if (size(p_i2) /= 2) print *,"fail"
        if (size(p_i4) /= 1) print *,"fail"
        if (size(p_i8) /= 2) print *,"fail"
        if (any( p_i1 /= reshape((/(i,i=101,108)/),(/2,2,2/)))) print *,"fail"
        if (any( p_i2 /= (/101_2,102_2/) )) print *,"fail"
        if (any( p_i4 /= 101_4 )) print *,"fail"
        if (any( p_i8 /= (/101_8,102_8/) )) print *,"fail"
        deallocate(p_i1,p_i2,p_i4,p_i8)
      end subroutine finalize
    end module mod2

    program abc
     use mod1
     use mod2
      call initialize()
      call sub1()
!$omp parallel
      call sub2()
!$omp end parallel
      call finalize()
      print *,'pass'
    end program abc

    subroutine sub1()
     use mod2
!$omp parallel
      allocate(p_i1(2,2,2)) ; p_i1=i11
      allocate(p_i2(2)) ; p_i2=i21
      allocate(p_i4(1)) ; p_i4=i41
      allocate(p_i8(2)) ; p_i8=i81
!$omp single
      p_i1=i13
      p_i2=i23
      p_i4=i43
      p_i8=i83
!$omp end single copyprivate(p_i1,p_i2,p_i4,p_i8)
      if (size(p_i1) /= 8) print *,"fail"
      if (size(p_i2) /= 2) print *,"fail"
      if (size(p_i4) /= 1) print *,"fail"
      if (size(p_i8) /= 2) print *,"fail"
      if (any( p_i1 /= reshape((/(i,i=101,108)/),(/2,2,2/)))) print *,"fail"
      if (any( p_i2 /= (/101_2,102_2/) )) print *,"fail"
      if (any( p_i4 /= 101_4 )) print *,"fail"
      if (any( p_i8 /= (/101_8,102_8/) )) print *,"fail"
      deallocate(p_i1,p_i2,p_i4,p_i8)
!$omp end parallel
    end subroutine sub1

    subroutine sub2()
     use mod2
      allocate(p_i1(2,2,2)) ; p_i1=i11
      allocate(p_i2(2)) ; p_i2=i21
      allocate(p_i4(1)) ; p_i4=i41
      allocate(p_i8(2)) ; p_i8=i81
!$omp single
      p_i1=i13
      p_i2=i23
      p_i4=i43
      p_i8=i83
!$omp end single copyprivate(p_i1,p_i2,p_i4,p_i8)
      if (size(p_i1) /= 8) print *,"fail"
      if (size(p_i2) /= 2) print *,"fail"
      if (size(p_i4) /= 1) print *,"fail"
      if (size(p_i8) /= 2) print *,"fail"
      if (any( p_i1 /= reshape((/(i,i=101,108)/),(/2,2,2/)))) print *,"fail"
      if (any( p_i2 /= (/101_2,102_2/) )) print *,"fail"
      if (any( p_i4 /= 101_4 )) print *,"fail"
      if (any( p_i8 /= (/101_8,102_8/) )) print *,"fail"
      if (OMP_GET_THREAD_NUM()/=0) deallocate(p_i1,p_i2,p_i4,p_i8)
    end subroutine sub2
