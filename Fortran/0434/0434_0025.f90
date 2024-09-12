  call s1
  print *,'pass'
  contains
subroutine s1
  type t
     character::character
  end type t
  type t4
     character(1,4)::utf32(1,2)
  end type t4
  type(t)::ttt(1,2)
  type(t4)::ttt4
  ttt%character="1"
  ttt4%utf32=4_"1"
  associate(complex=>[ttt])
    if(ttt(1,2)%character/="1") print *,'err',ttt%character
  end associate
  associate(complex=>[ttt%character])
    if(ttt(1,2)%character/="1") print *,'err'
  end associate
  associate(complex=>[ttt4%utf32])
    if(ttt4%utf32(1,2)/=4_"1") print *,'err'
  end associate
end subroutine s1
end
