    module mod
      type z
        integer::i
        type(z),pointer::next=>null()
      end type
    end module
    subroutine subset(kp_pt)
     use mod
     type(z),pointer::mk_pt
     type(z),pointer::wk_pt
     type(z),pointer::kp_pt
!$omp parallel
!$omp single
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
!$omp endsingle
!$omp endparallel
    end subroutine subset

    recursive subroutine subrec(w_pt,icount)
      use mod
      type(z),pointer::w_pt
      integer(4)::icount
      do while (associated(w_pt))
        icount = icount + w_pt%i
        call subrec(w_pt%next,icount)
        return 
      enddo
    end subroutine subrec

    program main
      use mod
      interface
        subroutine subset(kp_pt)
          use mod
          type(z),pointer::kp_pt
        end subroutine subset
        subroutine subrec(kp_pt,icount)
          use mod
          type(z),pointer::kp_pt
           integer(4)::icount
        end subroutine subrec
      end interface
      type(z),pointer::kp_pt
      icount=0
      call subset(kp_pt)
!$omp parallel
!$omp master
      call subrec(kp_pt,icount)
      if (icount /= 5050) print *,icount
!$omp endmaster
!$omp end parallel
      print *,'pass'
    end program
