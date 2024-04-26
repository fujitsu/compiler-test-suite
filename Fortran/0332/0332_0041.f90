    program foralls
      type zz
        integer(4)::ii(5)=(/1,0,3,0,5/)
        integer(4)::jj(5)=(/1,0,3,0,5/)
      end type
      type(zz)::aa

      forall(i=1:5 ,aa%jj(i)==0)
        aa%ii(i)=i
      endforall
      if (any(aa%ii(:)/=(/1,2,3,4,5/))) print *,'aa%ii->',aa%ii
      print *,'pass'
    end program
