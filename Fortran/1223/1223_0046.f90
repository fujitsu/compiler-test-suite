 subroutine s1
  type tt
     integer(8)::du
     integer(8)::dr
  end type
  type t
     integer(8)::d
  end type
  type,extends(t)::te
     integer(8)::dx
     type(tt):: y=tt(1,2)
  end type

  class(t),allocatable::v(:),w(:)
    allocate(te::w(4))
    allocate(   v,mold=w)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(w)
    if (v(m)%y%du/=1) print *,3828
    if (v(m)%y%dr/=2) print *,3825
  end do
 end select
 if (k/=1) print *,292
end
call s1()
     print *,'sngg142t : pass'
     end
