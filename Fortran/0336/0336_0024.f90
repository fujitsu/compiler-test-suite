subroutine set(l)
l=5
end
module D25_M
  contains
    subroutine IT( )
    j=0
    call set(l)
    call set(ll)
    do i = 1, min( l, ll )
      j=i+1
    end do
    if ( j.ne.6 ) then
      print *,"NG"
    else
      print *,"OK"
    endif
    end subroutine IT
end module D25_M
use D25_M
call IT( )
end
