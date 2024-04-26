    module mod
     type zz
       integer(4),dimension(3)::ii
     end type
    end module

    program foralls
     use mod
     type(zz)::a(3)
      a=(/zz((/11,12,13/)),zz((/21,22,23/)),zz((/31,32,33/))/)
      call sub(a,3)
      if (any(a(1)%ii/=(/11,12,13/))) print *,'a(1)%ii->',a(1)%ii
      if (any(a(2)%ii/=(/11,12,13/))) print *,'a(2)%ii->',a(2)%ii
      if (any(a(3)%ii/=(/21,22,23/))) print *,'a(3)%ii->',a(3)%ii
      print *,'pass'
    end program foralls

    subroutine sub(a,n)
     use mod
     type(zz)::a(n)
      forall(i=1:2)
        a(i+1)=a(i)
      endforall
    end subroutine
