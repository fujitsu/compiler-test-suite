 subroutine s1
  type t0
     integer(8)::dzt 
     integer(8)::du
  end type
  type tt
     integer(8)::dz  
     integer(8)::du=1
  end type
  type t
     integer(8)::d
  end type
  type,extends(t)::te
     integer(8)::dx
     type(t0):: y
     type(tt):: yy
  end type

  class(t),allocatable::v(:),w(:)
    allocate(te::w(4))
    allocate(   v,mold=w)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(w)
    if (v(m)%yy%du/=1) print *,3828
  end do
 end select
 if (k/=1) print *,292
end
call s1()
     print *,'sngg143t : pass'
     end
