    module mod
      integer(1),target ,dimension(1)::i11=1_1,i13=(/101_1/)
      integer(1),target ,dimension(2)::i12=10_1
      integer(2),target ,dimension(2)::i21=1_2,i23=(/101_2,102_2/)
      integer(2),target ,dimension(1)::i22=10_2
      integer(4),target ,dimension(1)::i41=1_4,i43=(/101_4/)
      integer(4),target ,dimension(2)::i42=10_4
      integer(8),target ,dimension(2)::i81=1_8,i83=(/101_8,102_8/)
      integer(8),target ,dimension(1)::i82=10_8
    end module mod

    program abc
     use mod
     interface
       subroutine sub1(p_i1,p_i2,p_i4,p_i8)
         integer(1),allocatable,dimension(:)::p_i1
         integer(2),allocatable,dimension(:)::p_i2
         integer(4),allocatable,dimension(:)::p_i4
         integer(8),allocatable,dimension(:)::p_i8
       end subroutine sub1
       subroutine sub2(p_i1,p_i2,p_i4,p_i8)
         integer(1),allocatable,dimension(:)::p_i1
         integer(2),allocatable,dimension(:)::p_i2
         integer(4),allocatable,dimension(:)::p_i4
         integer(8),allocatable,dimension(:)::p_i8
       end subroutine sub2
     end interface
     integer(1),allocatable,dimension(:)::p_i1
     integer(2),allocatable,dimension(:)::p_i2
     integer(4),allocatable,dimension(:)::p_i4
     integer(8),allocatable,dimension(:)::p_i8
      allocate(p_i1(1)) ; p_i1=i11
      allocate(p_i2(2)) ; p_i2=i21
      allocate(p_i4(1)) ; p_i4=i41
      allocate(p_i8(2)) ; p_i8=i81
      call sub1(p_i1,p_i2,p_i4,p_i8)
!$omp parallel private(p_i1,p_i2,p_i4,p_i8)
      call sub2(p_i1,p_i2,p_i4,p_i8)
!$omp end parallel
      if (size(p_i1) /= 1) print *,"fail"
      if (size(p_i2) /= 2) print *,"fail"
      if (size(p_i4) /= 1) print *,"fail"
      If (size(p_i8) /= 2) print *,"fail"
      if (any( p_i1 /= 1_1 )) print *,"fail"
      if (any( p_i2 /= 1_2 )) print *,"fail"
      if (any( p_i4 /= 1_4 )) print *,"fail"
      if (any( p_i8 /= 1_8 )) print *,"fail"
      deallocate(p_i1,p_i2,p_i4,p_i8)
      print *,'pass'
    end program abc

    subroutine sub1(p_i1,p_i2,p_i4,p_i8)
     use mod
     integer(1),allocatable,dimension(:)::p_i1
     integer(2),allocatable,dimension(:)::p_i2
     integer(4),allocatable,dimension(:)::p_i4
     integer(8),allocatable,dimension(:)::p_i8
!$omp parallel private(p_i1,p_i2,p_i4,p_i8)
      allocate(p_i1(1)) ; p_i1=i11
      allocate(p_i2(2)) ; p_i2=i21
      allocate(p_i4(1)) ; p_i4=i41
      allocate(p_i8(2)) ; p_i8=i81
!$omp single
      p_i1=i13
      p_i2=i23
      p_i4=i43
      p_i8=i83
!$omp end single copyprivate(p_i1,p_i2,p_i4,p_i8)
      if (size(p_i1) /= 1) print *,"fail"
      if (size(p_i2) /= 2) print *,"fail"
      if (size(p_i4) /= 1) print *,"fail"
      if (size(p_i8) /= 2) print *,"fail"
      if (any( p_i1 /= 101_1 )) print *,"fail"
      if (any( p_i2 /= (/101_2,102_2/) )) print *,"fail"
      if (any( p_i4 /= 101_4 )) print *,"fail"
      if (any( p_i8 /= (/101_8,102_8/) )) print *,"fail"
      deallocate(p_i1,p_i2,p_i4,p_i8)
!$omp end parallel
    end subroutine sub1

    subroutine sub2(p_i1,p_i2,p_i4,p_i8)
     use mod
     integer(1),allocatable,dimension(:)::p_i1
     integer(2),allocatable,dimension(:)::p_i2
     integer(4),allocatable,dimension(:)::p_i4
     integer(8),allocatable,dimension(:)::p_i8
      allocate(p_i1(1)) ; p_i1=i11
      allocate(p_i2(2)) ; p_i2=i21
      allocate(p_i4(1)) ; p_i4=i41
      allocate(p_i8(2)) ; p_i8=i81
!$omp single
      p_i1=i13
      p_i2=i23
      p_i4=i43
      p_i8=i83
!$omp end single copyprivate(p_i1,p_i2,p_i4,p_i8)
      if (size(p_i1) /= 1) print *,"fail"
      if (size(p_i2) /= 2) print *,"fail"
      if (size(p_i4) /= 1) print *,"fail"
      if (size(p_i8) /= 2) print *,"fail"
      if (any( p_i1 /= 101_1 )) print *,"fail"
      if (any( p_i2 /= (/101_2,102_2/) )) print *,"fail"
      if (any( p_i4 /= 101_4 )) print *,"fail"
      if (any( p_i8 /= (/101_8,102_8/) )) print *,"fail"
      deallocate(p_i1,p_i2,p_i4,p_i8)
    end subroutine sub2
