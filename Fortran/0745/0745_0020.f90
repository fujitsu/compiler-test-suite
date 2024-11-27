subroutine soo

logical a
integer set_i
integer*2 s,set_s
integer*1 uc,set_uc

    i=0
    s=set_s()
    uc=5
    a = ((s.le.s).and.(((uc/uc).eq.1)))

    if ( .not.a ) then
      print *,"NG"
    else
      print *,"OK"
    endif

    a = (i.eq.1 .and. i.eq.1)
    if ( a ) then
      print *,"NG"
    else
      print *,"OK"
    endif
end
print *,'pass'
end
 integer*2 function set_s()
set_s=1
end
