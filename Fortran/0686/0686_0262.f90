      call sub()
      print *,'pass'
      contains
        subroutine sub()
        real( 4),pointer,save::p_r04(:)
        real( 8),pointer,save::p_r08(:)
        real(16),pointer,save::p_r16(:)
        real( 4),target,dimension(1)::r041=1.0d0,r042=1.0e1,r043=1.0e2
        real( 8),target,dimension(1)::r081=1.0d0,r082=1.0d1,r083=1.0d2
        real(16),target,dimension(1)::r161=1.0q0,r162=1.0q1,r163=1.0q2
        integer(4),external::OMP_GET_THREAD_NUM
  !$omp threadprivate(p_r04,p_r08,p_r16)
        p_r04=>r041
        p_r08=>r081
        p_r16=>r161
  !$omp parallel
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
        if (any(p_r04 /= 1.0e2)) print *,"fail"
        if (any(p_r08 /= 1.0e2)) print *,"fail"
        if (any(p_r16 /= 1.0e2)) print *,"fail"
        if (OMP_GET_THREAD_NUM()/=0) then
          p_r04=>null()
          nullify(p_r04)
          p_r16=>null()
        endif
  !$omp end parallel
        if (.not. associated(p_r04)) print *,"fail"
        if (.not. associated(p_r08)) print *,"fail"
        if (.not. associated(p_r16)) print *,"fail"
        if (any(p_r04 /= 1.0e2)) print *,"fail"
        if (any(p_r08 /= 1.0e2)) print *,"fail"
        if (any(p_r16 /= 1.0e2)) print *,"fail"
        p_r04=>null()
        nullify(p_r04)
        p_r16=>null()
        end subroutine sub
      end
