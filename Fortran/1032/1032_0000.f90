    module mod
      type z
       sequence
        integer::i
        type(z),pointer::p
      end type
      type(z),pointer::mk_pt
      type(z),pointer::wk_pt
    end module

    subroutine sub1()
      use mod
      common /com/ kp_pt
!$omp threadprivate(/com/)
      type(z),pointer::kp_pt

!$omp parallel private(wk_pt,mk_pt)
      do i = 1,20
        allocate(mk_pt)
        if (i==1) then
          kp_pt=>mk_pt
        else
          wk_pt%p=>mk_pt 
        end if
        mk_pt%i=i
        mk_pt%p=>null()
        wk_pt=>mk_pt
      enddo
!$omp end parallel

    end subroutine

    subroutine sub2()
      use mod
      common /com/ kp_pt
!$omp threadprivate(/com/)
      type(z),pointer::kp_pt

!$omp parallel private(wk_pt,icount)
      wk_pt=>kp_pt
      icount = 0
      do 1000 while (associated(wk_pt))
        icount = icount + 1
        if (wk_pt%i /= icount) write(6,*) "NG"
        wk_pt=>wk_pt%p
 1000 continue
!$omp end parallel

    end subroutine

      call sub1()
      call sub2()
      print *,'pass'
    end program
