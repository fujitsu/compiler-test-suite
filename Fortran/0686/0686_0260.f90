      call sub()
      print *,'pass'
      contains
        subroutine sub()
        logical(1),pointer,save::p_l1(:)
        logical(2),pointer,save::p_l2(:)
        logical(4),pointer,save::p_l4(:)
        logical(8),pointer,save::p_l8(:)
        logical(1),target,dimension(1)::l11=.true.,l12=.false.,l13=.true.
        logical(2),target,dimension(1)::l21=.true.,l22=.false.,l23=.true.
        logical(4),target,dimension(1)::l41=.true.,l42=.false.,l43=.true.
        logical(8),target,dimension(1)::l81=.true.,l82=.false.,l83=.true.
        integer(4),external::OMP_GET_THREAD_NUM
  !$omp threadprivate(p_l1,p_l2,p_l4,p_l8)
        p_l1=>l11
        p_l2=>l21
        p_l4=>l41
        p_l8=>l81
  !$omp parallel
        p_l1=>l12
        p_l2=>l22
        p_l4=>l42
        p_l8=>l82
  !$omp single
        p_l1=>l13
        p_l2=>l23
        p_l4=>l43
        p_l8=>l83
  !$omp end single copyprivate(p_l1,p_l2,p_l4,p_l8)
        if (.not.all(p_l1)) print *,"fail"
        if (.not.all(p_l2)) print *,"fail"
        if (.not.all(p_l4)) print *,"fail"
        if (.not.all(p_l8)) print *,"fail"
        if (OMP_GET_THREAD_NUM()/=0) then
          p_l1=>null()
          p_l2=>null()
          p_l4=>null()
          p_l8=>null()
        endif 
  !$omp end parallel
        if (.not.all(p_l1)) print *,"fail"
        if (.not.all(p_l2)) print *,"fail"
        if (.not.all(p_l4)) print *,"fail"
        if (.not.all(p_l8)) print *,"fail"
        end subroutine sub
      end
