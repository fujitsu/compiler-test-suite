    module mod
      type z
        integer::i
        type(z),pointer::next=>null()
      end type
    end module
    subroutine sub()
      use mod
      type(z),pointer::mk_pt
      type(z),pointer::wk_pt
      type(z),pointer::kp_pt
      integer(4)::icount

      do i = 1,100
        allocate(mk_pt)
        if (i==1) then
          kp_pt=>mk_pt
        else
          wk_pt%next=>mk_pt
        end if
        mk_pt%i=i
        wk_pt=>mk_pt
      enddo

      icount = 0
!$omp parallel private(wk_pt),firstprivate(icount)
      wk_pt=>kp_pt
      call subrec(wk_pt,icount)
      if (icount /= 5050) print *,icount
!$omp endparallel
    contains
      recursive subroutine subrec(w_pt,icount)
        type(z),pointer::w_pt
        integer(4)::icount
        do while (associated(w_pt))
          icount = icount + w_pt%i
          call subrec(w_pt%next,icount)
          return 
        enddo
      end subroutine subrec
    end subroutine sub

    program main
      call sub()
      print *,'pass'
    end program
