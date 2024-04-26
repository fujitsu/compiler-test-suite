    program foralls
      type zz
        integer(8)::n=10
        logical(2),allocatable::ll(:)
        integer(4),allocatable::ii(:)
      end type
      type(zz)::aa

      allocate(aa%ll(aa%n),aa%ii(aa%n))
      aa%ii=(/1,0,3,0,5,0,7,0,9,0/)
      aa%ll=.false.
      where(aa%ii(:)==0)
        aa%ll(:)=.true.
      endwhere

      forall(i=1:aa%n ,aa%ll(i))
        aa%ii(i)=-i
      endforall

      if (any(aa%ii(:)/=(/1,-2,3,-4,5,-6,7,-8,9,-10/))) print *,'aa%ii->',aa%ii
      deallocate(aa%ll,aa%ii)
      print *,'pass'
    end program
