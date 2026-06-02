    module mod
      public
      real( 4),target,dimension(3,1,2)::r041=1.0d0,r043=1.0e2
      real( 4),target,dimension(1,1,2)::r042=1.0e1
      real( 8),target,dimension(3,1,2)::r081=1.0d0,r083=1.0d2
      real( 8),target,dimension(1,1,2)::r082=1.0d1
      real(16),target,dimension(3,1,2)::r161=1.0q0,r163=1.0q2
      real(16),target,dimension(1,1,2)::r162=1.0q1
     contains

      subroutine sub1(p_r04,p_r08,p_r16)
       real( 4),pointer,dimension(:,:,:)::p_r04
       real( 8),pointer,dimension(:,:,:)::p_r08
       real(16),pointer,dimension(:,:,:)::p_r16
  !$omp parallel private(p_r04,p_r08,p_r16)
        p_r04=>r042
        p_r08=>r082
        p_r16=>r162
  !$omp single
        p_r04=>r043
        p_r08=>r083
        p_r16=>r163
  !$omp end single copyprivate(p_r04,p_r08,p_r16)
        if (.not. associated(p_r04)) print *,"fail"
        if (.not. associated(p_r08)) print *,"fail"
        if (.not. associated(p_r16)) print *,"fail"
        if (any( p_r04 /= 1.0e2 )) print *,"fail"
        if (any( p_r08 /= 1.0e2 )) print *,"fail"
        if (any( p_r16 /= 1.0e2 )) print *,"fail"
        p_r04=>null()
        nullify(p_r04)
        p_r16=>null()
  !$omp end parallel
      end subroutine sub1

      subroutine sub2(p_r04,p_r08,p_r16)
       real( 4),pointer,dimension(:,:,:)::p_r04
       real( 8),pointer,dimension(:,:,:)::p_r08
       real(16),pointer,dimension(:,:,:)::p_r16
        p_r04=>r042
        p_r08=>r082
        p_r16=>r162
  !$omp single
        p_r04=>r043
        p_r08=>r083
        p_r16=>r163
  !$omp end single copyprivate(p_r04,p_r08,p_r16)
        if (.not. associated(p_r04)) print *,"fail"
        if (.not. associated(p_r08)) print *,"fail"
        if (.not. associated(p_r16)) print *,"fail"
        if (any( p_r04 /= 1.0e2 )) print *,"fail"
        if (any( p_r08 /= 1.0e2 )) print *,"fail"
        if (any( p_r16 /= 1.0e2 )) print *,"fail"
        p_r04=>null()
        nullify(p_r04)
        p_r16=>null()
      end subroutine sub2

    end module mod

    program abc
     use mod
     real( 4),pointer,dimension(:,:,:)::p_r04
     real( 8),pointer,dimension(:,:,:)::p_r08
     real(16),pointer,dimension(:,:,:)::p_r16
      p_r04=>r041
      p_r08=>r081
      p_r16=>r161
      call sub1(p_r04,p_r08,p_r16)
!$omp parallel private(p_r04,p_r08,p_r16)
      call sub2(p_r04,p_r08,p_r16)
!$omp end parallel
      if (.not. associated(p_r04)) print *,"fail"
      if (.not. associated(p_r08)) print *,"fail"
      if (.not. associated(p_r16)) print *,"fail"
      if (any( p_r04 /= 1.0e0 )) print *,"fail"
      if (any( p_r08 /= 1.0e0 )) print *,"fail"
      if (any( p_r16 /= 1.0e0 )) print *,"fail"
      p_r04=>null()
      nullify(p_r04)
      p_r16=>null()
      print *,'pass'
    end
