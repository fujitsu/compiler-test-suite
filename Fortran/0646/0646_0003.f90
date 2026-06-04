module entity_with_initialized
  integer     mi1,mi2,mi3
  character*3 mc1,mc2,mc3
  logical     ml1,ml2,ml3

  data mi1,mi2,mi3/1,2,3/
  data mc1,mc2,mc3/"ABC",'DEF',3hGHI/
  data ml1,ml2,ml3/.true.,.false.,.true./
endmodule 

program main
  call sub1(1)  
  call sub2()
  call sub3()
  call sub2()
  call sub1(2)
  print *,'*** pass ***'
end program

subroutine sub1(i)
  use entity_with_initialized

  if (i.eq.1) then
    if ((mi1.ne.1) .or. (mi2.ne.2) .or. (mi3.ne.3)) print *,'fail'
    if ((mc1.ne."ABC") .or. (mc2.ne."DEF") .or. (mc3.ne."GHI")) print *,'fail'
    if ((ml1.neqv..true.) .or. (ml2.neqv..false.) .or. &
      & (ml3.neqv..true.)) print *,'fail'
  else
    if ((mi1.ne.2) .or. (mi2.ne.4) .or. (mi3.ne.6)) print *,'fail'
    if ((mc1.ne."123") .or. (mc2.ne."456") .or. (mc3.ne."789")) print *,'fail'
    if ((ml1.neqv..false.) .or. (ml2.neqv..true.) .or. &
      & (ml3.neqv..false.)) print *,'fail'
  endif
endsubroutine

subroutine sub2()
  use entity_with_initialized,&
      mi1=>mi1,mi2=>mi1,mi3=>mi1, mj1=>mi2,mj2=>mi2,mj3=>mi2, &
      mk1=>mi3,mk2=>mi3,mk3=>mi3,                             &
      mc1=>mc1,mc2=>mc1,mc3=>mc1, md1=>mc2,md2=>mc2,md3=>mc2, &
      me1=>mc3,me2=>mc3,me3=>mc3,                             &
      ml1=>ml1,ml2=>ml1,ml3=>ml1, mm1=>ml2,mm2=>ml2,mm3=>ml2, &
      mn1=>ml3,mn2=>ml3,mn3=>ml3

  if ((mi1.ne.mi2) .or. (mi2.ne.mi3)) print *,'fail'
  if ((mj1.ne.mj2) .or. (mj2.ne.mj3)) print *,'fail'
  if ((mk1.ne.mk2) .or. (mk2.ne.mk3)) print *,'fail'
  if ((mc1.ne.mc2) .or. (mc2.ne.mc3)) print *,'fail'
  if ((md1.ne.md2) .or. (md2.ne.md3)) print *,'fail'
  if ((me1.ne.me2) .or. (me2.ne.me3)) print *,'fail'
  if ((ml1.neqv.ml2) .or. (ml1.neqv.ml2)) print *,'fail'
  if ((mm1.neqv.mm2) .or. (mm1.neqv.mm2)) print *,'fail'
  if ((mn1.neqv.mn2) .or. (mn1.neqv.mn2)) print *,'fail'
endsubroutine

subroutine sub3()
  use entity_with_initialized
  
  mi1 = mi1*2 ; mi2 = mi2*2 ; mi3 = mi3*2
  mc1 = "123" ; mc2 = "456" ; mc3 = "789"
  ml1 = .not.ml1 ; ml2 = .not.ml2 ; ml3=.not.ml3
endsubroutine

