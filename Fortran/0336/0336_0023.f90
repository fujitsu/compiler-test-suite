subroutine set(l)
l=5
end
subroutine s
  call IT
  contains
    subroutine IT
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
end subroutine s
call s
end
