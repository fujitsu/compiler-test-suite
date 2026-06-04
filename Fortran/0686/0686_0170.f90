      call sub()
      print *,'pass'
      contains
        subroutine sub()
        real( 4),pointer,dimension(:,:)::p_r04
        real( 8),pointer,dimension(:,:)::p_r08
        real(16),pointer,dimension(:,:)::p_r16
        real( 4),target ,dimension(1,1)::r041=1.0e0
        real( 4),target ,dimension(2,1)::r042=reshape( (/1.0e1,1.1e1/),(/2,1/) )
        real( 4),target ,dimension(3,1)::r043= &
                           reshape( (/1.0e2,1.1e2,1.2e2/),(/3,1/) )
        real( 8),target ,dimension(1,1)::r081=1.0d0
        real( 8),target ,dimension(2,1)::r082=reshape( (/1.0d1,1.1d1/),(/2,1/) )
        real( 8),target ,dimension(3,1)::r083= &
                           reshape( (/1.0d3,1.1d3,1.2d3/),(/3,1/) )
        real(16),target ,dimension(1,1)::r161=1.0q0
        real(16),target ,dimension(2,1)::r162=reshape( (/1.0q1,1.1q1/),(/2,1/) )
        real(16),target ,dimension(3,1)::r163= &
                           reshape( (/1.0q4,1.1q4,1.2q4/),(/3,1/) )
        p_r04=>r041
        p_r08=>r081
        p_r16=>r161
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
        if (any( p_r04 /= reshape((/1.0e2,1.1e2,1.2e2/),(/3,1/)) )) print *,"fail"
        if (any( p_r08 /= reshape((/1.0d3,1.1d3,1.2d3/),(/3,1/)) )) print *,"fail"
        if (any( p_r16 /= reshape((/1.0q4,1.1q4,1.2q4/),(/3,1/)) )) print *,"fail"
        p_r04=>null()
        nullify(p_r04)
        p_r16=>null()
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
        end subroutine sub
      end
