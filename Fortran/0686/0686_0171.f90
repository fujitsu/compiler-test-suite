      call sub()
      print *,'pass'
      contains
        subroutine sub()
        complex( 4),pointer,dimension(:,:)::p_c04
        complex( 8),pointer,dimension(:,:)::p_c08
        complex(16),pointer,dimension(:,:)::p_c16
        complex( 4),target ,dimension(1,1)::c041
        complex( 4),target ,dimension(2,1)::c042
        complex( 4),target ,dimension(3,1)::c043
        complex( 8),target ,dimension(1,1)::c081
        complex( 8),target ,dimension(2,1)::c082
        complex( 8),target ,dimension(3,1)::c083
        complex(16),target ,dimension(1,1)::c161
        complex(16),target ,dimension(2,1)::c162
        complex(16),target ,dimension(2,1)::c163
        c041=reshape( (/(1.0e0,-1.0e0)/) , (/1,1/) )
        c081=reshape( (/(1.0d0,-1.0d0)/) , (/1,1/) )
        c161=reshape( (/(1.0q0,-1.0q0)/) , (/1,1/) )
        c042=reshape( (/(1.0e1,-1.0e1),(-1.0e1,1.0e1)/) , (/2,1/) )
        c082=reshape( (/(1.0d1,-1.0d1),(-1.0d1,1.0d1)/) , (/2,1/) )
        c162=reshape( (/(1.0q1,-1.0q1),(-1.0q1,1.0q1)/) , (/2,1/) )
        c043=reshape( (/(1.1e1,-1.1e1),(1.2e1,-1.2e1),(1.3e1,-1.3e1)/) , &
                      (/3,1/) )
        c083=reshape( (/(1.1d2,-1.1d2),(1.2d2,-1.2d2),(1.3d2,-1.3d2)/) , &
                      (/3,1/) )
        c163=reshape( (/(1.1q3,-1.1q3),(1.2q3,-1.2q3)/) , (/2,1/) )
        p_c04=>c041
        p_c08=>c081
        p_c16=>c161
  !$omp parallel private(p_c04,p_c08,p_c16)
        p_c04=>c042
        p_c08=>c082
        p_c16=>c162
  !$omp single
        p_c04=>c043
        p_c08=>c083
        p_c16=>c163
  !$omp end single copyprivate(p_c04,p_c08,p_c16)
        if (.not.associated(p_c04)) print *,"fail"
        if (.not.associated(p_c08)) print *,"fail"
        if (.not.associated(p_c16)) print *,"fail"
        if (any( p_c04 /= &
        reshape( (/(1.1e1,-1.1e1),(1.2e1,-1.2e1),(1.3e1,-1.3e1)/),(/3,1/)) )) &
                           print *,"fail"
        if (any( p_c08 /= &
        reshape( (/(1.1d2,-1.1d2),(1.2d2,-1.2d2),(1.3d2,-1.3d2)/),(/3,1/)) )) &
                           print *,"fail"
        if (any( p_c16 /= &
        reshape( (/(1.1q3,-1.1q3),(1.2q3,-1.2q3)/),(/2,1/)) ))  print *,"fail"
        p_c04=>null()
        p_c08=>null()
        p_c16=>null()
  !$omp end parallel
        if (.not.associated(p_c04)) print *,"fail"
        if (.not.associated(p_c08)) print *,"fail"
        if (.not.associated(p_c16)) print *,"fail"
        if (any( p_c04 /= (1.0e0,-1.0e0) )) print *,"fail"
        if (any( p_c08 /= (1.0d0,-1.0d0) )) print *,"fail"
        if (any( p_c16 /= (1.0q0,-1.0q0) )) print *,"fail"
        p_c04=>null()
        p_c08=>null()
        p_c16=>null()
        end subroutine sub
      end
