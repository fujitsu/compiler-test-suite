    module mod
      type z
        integer::i
        type(z),pointer::p=>null()
      end type
    end module

    subroutine sub()
      use mod
      type(z),pointer::mk_pt
      type(z),pointer::wk_pt
      type(z),pointer::kp_pt

      do i = 1,20
        allocate(mk_pt)
        if (i==1) then
          kp_pt=>mk_pt
        else
          wk_pt%p=>mk_pt 
        end if
        mk_pt%i=i
        wk_pt=>mk_pt
      enddo

!$omp parallel private(wk_pt,icount),shared(kp_pt)
      wk_pt=>kp_pt
      icount = 0
      do 1000 while (associated(wk_pt))
        icount = icount + 1
        if (wk_pt%i /= icount) print *,"fail"
        wk_pt=>wk_pt%p
 1000 continue
!$omp end parallel

      deallocate(mk_pt)

    end subroutine

    program gomp274
      call sub()
      print *,'pass'
    end program
