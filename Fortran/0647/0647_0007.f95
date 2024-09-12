  program main

    type aaa
      integer,dimension(2:4) :: a
      integer                :: b
    endtype
    type(aaa) var(2:4),cnt(2:4)
    parameter (cnt=(/(aaa((/1,1,1/),1),i=1,3)/))

    integer,parameter :: av=lbound(var,1)
    integer,parameter :: bv=lbound(var(2)%a,1)
    integer,parameter :: cv=lbound(var%a(2),1)

    integer,parameter :: dv=lbound(var(:),1)
    integer,parameter :: ev=lbound(var(2)%a(:),1)
    integer,parameter :: fv=lbound(var(:)%a(2),1)

    integer,parameter :: gv=lbound(var(:4),1)
    integer,parameter :: hv=lbound(var(2)%a(:4),1)
    integer,parameter :: iv=lbound(var(:4)%a(2),1)

    integer,parameter :: jv=lbound(var(2:4),1)
    integer,parameter :: kv=lbound(var(2)%a(2:4),1)
    integer,parameter :: lv=lbound(var(2:4)%a(2),1)

    integer,parameter :: mv=lbound(var%b,1)
    integer,parameter :: ov=lbound(var(:)%b,1)
    integer,parameter :: pv=lbound(var(:4)%b,1)
    integer,parameter :: qv=lbound(var(2:4)%b,1)

    integer,parameter :: ac=lbound(cnt,1)
    integer,parameter :: bc=lbound(cnt(2)%a,1)
    integer,parameter :: cc=lbound(cnt%a(2),1)

    integer,parameter :: dc=lbound(cnt(:),1)
    integer,parameter :: ec=lbound(cnt(2)%a(:),1)
    integer,parameter :: fc=lbound(cnt(:)%a(2),1)

    integer,parameter :: gc=lbound(cnt(:4),1)
    integer,parameter :: hc=lbound(cnt(2)%a(:4),1)
    integer,parameter :: ic=lbound(cnt(:4)%a(2),1)

    integer,parameter :: jc=lbound(cnt(2:4),1)
    integer,parameter :: kc=lbound(cnt(2)%a(2:4),1)
    integer,parameter :: lc=lbound(cnt(2:4)%a(2),1)

    integer,parameter :: mc=lbound(cnt%b,1)
    integer,parameter :: oc=lbound(cnt(:)%b,1)
    integer,parameter :: pc=lbound(cnt(:4)%b,1)
    integer,parameter :: qc=lbound(cnt(2:4)%b,1)

    integer :: error = 0

    ae=lbound(var,1)
    be=lbound(var(2)%a,1)
    ce=lbound(var%a(2),1)

    de=lbound(var(:),1)
    ee=lbound(var(2)%a(:),1)
    fe=lbound(var(:)%a(2),1)

    ge=lbound(var(:4),1)
    he=lbound(var(2)%a(:4),1)
    ie=lbound(var(:4)%a(2),1)

    je=lbound(var(2:4),1)
    ke=lbound(var(2)%a(2:4),1)
    le=lbound(var(2:4)%a(2),1)

    me=lbound(var%b,1)
    oe=lbound(var(:)%b,1)
    pe=lbound(var(:4)%b,1)
    qe=lbound(var(2:4)%b,1)

    if (any((/av/=ac , ac/=ae , ae/=2/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if

    if (any((/bv/=bc , bc/=be , be/=2/))) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if

    if (any((/cv/=cc , cc/=ce , ce/=1/))) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if

    if (any((/dv/=dc , dc/=de , de/=1/))) then
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if

    if (any((/ev/=ec , ec/=ee , ee/=1/))) then
      print *, " +++ error : item 5 +++ "
      error = error +1 ;
    end if

    if (any((/fv/=fc , fc/=fe , fe/=1/))) then
      print *, " +++ error : item 6 +++ "
      error = error +1 ;
    end if

    if (any((/gv/=gc , gc/=ge , ge/=1/))) then
      print *, " +++ error : item 7 +++ "
      error = error +1 ;
    end if

    if (any((/hv/=hc , hc/=he , he/=1/))) then
      print *, " +++ error : item 8 +++ "
      error = error +1 ;
    end if

    if (any((/iv/=ic , ic/=ie , ie/=1/))) then
      print *, " +++ error : item 9 +++ "
      error = error +1 ;
    end if

    if (any((/jv/=jc , jc/=je , je/=1/))) then
      print *, " +++ error : item 10 +++ "
      error = error +1 ;
    end if

    if (any((/kv/=kc , kc/=ke ,ke/=1/))) then
      print *, " +++ error : item 11 +++ "
      error = error +1 ;
    end if

    if (any((/lv/=lc , lc/=le , le/=1/))) then
      print *, " +++ error : item 12 +++ "
      error = error +1 ;
    end if

    if (any((/mv/=mc , mc/=me , me/=1/))) then
      print *, " +++ error : item 13 +++ "
      error = error +1 ;
    end if

    if (any((/ov/=oc , oc/=oe , oe/=1/))) then
      print *, " +++ error : item 14 +++ "
      error = error +1 ;
    end if

    if (any((/pv/=pc , pc/=pe , pe/=1/))) then
      print *, " +++ error : item 15 +++ "
      error = error +1 ;
    end if

    if (any((/qv/=qc , qc/=qe , qe/=1/))) then
      print *, " +++ error : item 16 +++ "
      error = error +1 ;
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main
