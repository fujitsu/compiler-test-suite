    module mod
      real( 4),pointer::p_r04
      real( 8),pointer::p_r08
      real(16),pointer::p_r16
      real( 4),target ::r041=1.0d0,r042=1.0e1,r043=1.0e2
      real( 8),target ::r081=1.0d0,r082=1.0d1,r083=1.0d2
      real(16),target ::r161=1.0q0,r162=1.0q1,r163=1.0q2
    end module mod

    module mod1
     use mod
     contains
      subroutine sub_s()
        p_r04=>r041
        p_r08=>r081
        p_r16=>r161
      end subroutine sub_s
      subroutine sub_e()
        if (.not. associated(p_r04)) print *,"fail"
        if (.not. associated(p_r08)) print *,"fail"
        if (.not. associated(p_r16)) print *,"fail"
        if (p_r04 /= 1.0e0) print *,"fail"
        if (p_r08 /= 1.0e0) print *,"fail"
        if (p_r16 /= 1.0e0) print *,"fail"
        p_r04=>null()
        nullify(p_r04)
        p_r16=>null()
      end subroutine sub_e
    endmodule mod1

    program abc
     use mod1
      call sub_s()
      call sub()
      call sub_e()
      print *,'pass'
    end program abc

    subroutine sub()
     use mod
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
      if (p_r04 /= 1.0e2) print *,"fail"
      if (p_r08 /= 1.0e2) print *,"fail"
      if (p_r16 /= 1.0e2) print *,"fail"
      p_r04=>null()
      nullify(p_r04)
      p_r16=>null()
!$omp end parallel
    end subroutine sub
