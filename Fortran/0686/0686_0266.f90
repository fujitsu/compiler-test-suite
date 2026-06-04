      call sub()
      print *,'pass'
      contains
        subroutine sub()
        integer(4),external::OMP_GET_THREAD_NUM
        integer(1),allocatable,dimension(:)::p_i1
        integer(2),allocatable,dimension(:)::p_i2
        integer(4),allocatable,dimension(:)::p_i4
        integer(8),allocatable,dimension(:)::p_i8
        save::p_i1,p_i2,p_i4,p_i8
  !$omp threadprivate(p_i1,p_i2,p_i4,p_i8)
        integer(1),target ,dimension(1)::i11=1_1,i13=(/101_1/)
        integer(2),target ,dimension(2)::i21=1_2,i23=(/101_2,102_2/)
        integer(4),target ,dimension(1)::i41=1_4,i43=(/101_4/)
        integer(8),target ,dimension(2)::i81=1_8,i83=(/101_8,102_8/)
        allocate(p_i1(1))
        allocate(p_i2(2))
        allocate(p_i4(1))
        allocate(p_i8(2))
        p_i1=i11
        p_i2=i21
        p_i4=i41
        p_i8=i81
  !$omp parallel
        if (.not.allocated(p_i1)) allocate(p_i1(1))
        if (.not.allocated(p_i2)) allocate(p_i2(2))
        if (.not.allocated(p_i4)) allocate(p_i4(1))
        if (.not.allocated(p_i8)) allocate(p_i8(2))
  !$omp single
        p_i1=i13
        p_i2=i23
        p_i4=i43
        p_i8=i83
  !$omp end single copyprivate(p_i1,p_i2,p_i4,p_i8)
  !$omp critical
        if (size(p_i1) /= 1) print *,"fail"
        if (any( p_i1 /= 101_1 )) print *,"fail"
        if (OMP_GET_THREAD_NUM()/=0) then
          deallocate(p_i1)
        else
          p_i1=p_i1+1_1
        endif
        if (size(p_i2) /= 2) print *,"fail"
        if (any( p_i2 /= (/101_2,102_2/) )) print *,"fail"
        if (OMP_GET_THREAD_NUM()/=0) then
          deallocate(p_i2)
        else
          p_i2=p_i2+1_2
        endif
        if (size(p_i4) /= 1) print *,"fail"
        if (any( p_i4 /= 101_4 )) print *,"fail"
        if (OMP_GET_THREAD_NUM()/=0) then
          deallocate(p_i4)
        else
          p_i4=p_i4+1_4
        endif
        if (size(p_i8) /= 2) print *,"fail"
        if (any( p_i8 /= (/101_8,102_8/) )) print *,"fail"
        if (OMP_GET_THREAD_NUM()/=0) then
          deallocate(p_i8)
        else
          p_i8=p_i8+1_8
        endif
  !$omp end critical
  !$omp end parallel
        if (size(p_i1) /= 1) print *,"fail"
        if (size(p_i2) /= 2) print *,"fail"
        if (size(p_i4) /= 1) print *,"fail"
        if (size(p_i8) /= 2) print *,"fail"
        if (any( p_i1 /= 102_1 )) print *,"fail"
        if (any( p_i2 /= (/102_2,103_2/) )) print *,"fail"
        if (any( p_i4 /= 102_4 )) print *,"fail"
        if (any( p_i8 /= (/102_8,103_8/) )) print *,"fail"
        deallocate(p_i1,p_i2,p_i4,p_i8)
        end subroutine sub
      end
