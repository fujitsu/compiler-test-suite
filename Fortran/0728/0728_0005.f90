call sub01()
call sub02()
call sub03()
print *,'pass'
end

subroutine sub01()
integer(kind=1) ,pointer  :: ia01
integer(kind=2) ,pointer  :: ia02
integer(kind=4) ,pointer  :: ia03
integer(kind=8) ,pointer  :: ia04
logical(kind=1) ,pointer  :: ia05
logical(kind=2) ,pointer  :: ia06
logical(kind=4) ,pointer  :: ia07
logical(kind=8) ,pointer  :: ia08
real(kind=4)    ,pointer  :: ia09
real(kind=8)    ,pointer  :: ia10
real(kind=16)   ,pointer  :: ia11
complex(kind=4) ,pointer  :: ia12
complex(kind=8) ,pointer  :: ia13
complex(kind=16),pointer  :: ia14
character       ,pointer  :: ia15
integer(kind=1) ,target   :: it01
integer(kind=2) ,target   :: it02
integer(kind=4) ,target   :: it03
integer(kind=8) ,target   :: it04
logical(kind=1) ,target   :: it05
logical(kind=2) ,target   :: it06
logical(kind=4) ,target   :: it07
logical(kind=8) ,target   :: it08
real(kind=4)    ,target   :: it09
real(kind=8)    ,target   :: it10
real(kind=16)   ,target   :: it11
complex(kind=4) ,target   :: it12
complex(kind=8) ,target   :: it13
complex(kind=16),target   :: it14
character       ,target   :: it15
ia01=>it01 ; ia02=>it02 ; ia03=>it03 ; ia04=>it04 ; ia05=>it05 ;
ia06=>it06 ; ia07=>it07 ; ia08=>it08 ; ia09=>it09 ; ia10=>it10 ;
ia11=>it11 ; ia12=>it12 ; ia13=>it13 ; ia14=>it14 ; ia15=>it15 ;
call isub01(ia01,ia02,ia03,ia04,ia05,ia06,ia07,ia08,ia09,ia10,&
         ia11,ia12,ia13,ia14,ia15)
call isub02(ia01,ia02,ia03,ia04,ia05,ia06,ia07,ia08,ia09,ia10,&
         ia11,ia12,ia13,ia14,ia15)
contains
subroutine isub01(ja01,ja02,ja03,ja04,ja05,ja06,ja07,ja08,ja09,ja10,&
                 ja11,ja12,ja13,ja14,ja15)
integer(kind=1) ,pointer  :: ja01
integer(kind=2) ,pointer  :: ja02
integer(kind=4) ,pointer  :: ja03
integer(kind=8) ,pointer  :: ja04
logical(kind=1) ,pointer  :: ja05
logical(kind=2) ,pointer  :: ja06
logical(kind=4) ,pointer  :: ja07
logical(kind=8) ,pointer  :: ja08
real(kind=4)    ,pointer  :: ja09
real(kind=8)    ,pointer  :: ja10
real(kind=16)   ,pointer  :: ja11
complex(kind=4) ,pointer  :: ja12
complex(kind=8) ,pointer  :: ja13
complex(kind=16),pointer  :: ja14
character       ,pointer  :: ja15
ja01=>null() ; ja02=>null() ; ja03=>null() ; ja04=>null() ; ja05=>null() ;
ja06=>null() ; ja07=>null() ; ja08=>null() ; ja09=>null() ; ja10=>null() ;
ja11=>null() ; ja12=>null() ; ja13=>null() ; ja14=>null() ; ja15=>null() ;
end subroutine
subroutine isub02(ja01,ja02,ja03,ja04,ja05,ja06,ja07,ja08,ja09,ja10,&
                 ja11,ja12,ja13,ja14,ja15)
integer(kind=1) ,pointer  :: ja01
integer(kind=2) ,pointer  :: ja02
integer(kind=4) ,pointer  :: ja03
integer(kind=8) ,pointer  :: ja04
logical(kind=1) ,pointer  :: ja05
logical(kind=2) ,pointer  :: ja06
logical(kind=4) ,pointer  :: ja07
logical(kind=8) ,pointer  :: ja08
real(kind=4)    ,pointer  :: ja09
real(kind=8)    ,pointer  :: ja10
real(kind=16)   ,pointer  :: ja11
complex(kind=4) ,pointer  :: ja12
complex(kind=8) ,pointer  :: ja13
complex(kind=16),pointer  :: ja14
character       ,pointer  :: ja15
ja01=>it01 ; ja02=>it02 ; ja03=>it03 ; ja04=>it04 ; ja05=>it05 ;
ja06=>it06 ; ja07=>it07 ; ja08=>it08 ; ja09=>it09 ; ja10=>it10 ;
ja11=>it11 ; ja12=>it12 ; ja13=>it13 ; ja14=>it14 ; ja15=>it15 ;
if (.not.associated(ja01,ia01)) write(6,*) "NG"
if (.not.associated(ja02,ia02)) write(6,*) "NG"
if (.not.associated(ja03,ia03)) write(6,*) "NG"
if (.not.associated(ja04,ia04)) write(6,*) "NG"
if (.not.associated(ja05,ia05)) write(6,*) "NG"
if (.not.associated(ja06,ia06)) write(6,*) "NG"
if (.not.associated(ja07,ia07)) write(6,*) "NG"
if (.not.associated(ja08,ia08)) write(6,*) "NG"
if (.not.associated(ja09,ia09)) write(6,*) "NG"
if (.not.associated(ja10,ia10)) write(6,*) "NG"
if (.not.associated(ja11,ia11)) write(6,*) "NG"
if (.not.associated(ja12,ia12)) write(6,*) "NG"
if (.not.associated(ja13,ia13)) write(6,*) "NG"
if (.not.associated(ja14,ia14)) write(6,*) "NG"
if (.not.associated(ja15,ia15)) write(6,*) "NG"
end subroutine
end

subroutine sub02()
integer(kind=1) ,pointer  :: ia01(:)
integer(kind=2) ,pointer  :: ia02(:)
integer(kind=4) ,pointer  :: ia03(:)
integer(kind=8) ,pointer  :: ia04(:)
logical(kind=1) ,pointer  :: ia05(:)
logical(kind=2) ,pointer  :: ia06(:)
logical(kind=4) ,pointer  :: ia07(:)
logical(kind=8) ,pointer  :: ia08(:)
real(kind=4)    ,pointer  :: ia09(:)
real(kind=8)    ,pointer  :: ia10(:)
real(kind=16)   ,pointer  :: ia11(:)
complex(kind=4) ,pointer  :: ia12(:)
complex(kind=8) ,pointer  :: ia13(:)
complex(kind=16),pointer  :: ia14(:)
character       ,pointer  :: ia15(:)
integer(kind=1) ,target   :: it01(2)
integer(kind=2) ,target   :: it02(2)
integer(kind=4) ,target   :: it03(2)
integer(kind=8) ,target   :: it04(2)
logical(kind=1) ,target   :: it05(2)
logical(kind=2) ,target   :: it06(2)
logical(kind=4) ,target   :: it07(2)
logical(kind=8) ,target   :: it08(2)
real(kind=4)    ,target   :: it09(2)
real(kind=8)    ,target   :: it10(2)
real(kind=16)   ,target   :: it11(2)
complex(kind=4) ,target   :: it12(2)
complex(kind=8) ,target   :: it13(2)
complex(kind=16),target   :: it14(2)
character       ,target   :: it15(2)
ia01=>it01 ; ia02=>it02 ; ia03=>it03 ; ia04=>it04 ; ia05=>it05 ;
ia06=>it06 ; ia07=>it07 ; ia08=>it08 ; ia09=>it09 ; ia10=>it10 ;
ia11=>it11 ; ia12=>it12 ; ia13=>it13 ; ia14=>it14 ; ia15=>it15 ;
call isub01(ia01,ia02,ia03,ia04,ia05,ia06,ia07,ia08,ia09,ia10,&
         ia11,ia12,ia13,ia14,ia15)
call isub02(ia01,ia02,ia03,ia04,ia05,ia06,ia07,ia08,ia09,ia10,&
         ia11,ia12,ia13,ia14,ia15)
contains
subroutine isub01(ja01,ja02,ja03,ja04,ja05,ja06,ja07,ja08,ja09,ja10,&
                 ja11,ja12,ja13,ja14,ja15)
integer(kind=1) ,pointer  :: ja01(:)
integer(kind=2) ,pointer  :: ja02(:)
integer(kind=4) ,pointer  :: ja03(:)
integer(kind=8) ,pointer  :: ja04(:)
logical(kind=1) ,pointer  :: ja05(:)
logical(kind=2) ,pointer  :: ja06(:)
logical(kind=4) ,pointer  :: ja07(:)
logical(kind=8) ,pointer  :: ja08(:)
real(kind=4)    ,pointer  :: ja09(:)
real(kind=8)    ,pointer  :: ja10(:)
real(kind=16)   ,pointer  :: ja11(:)
complex(kind=4) ,pointer  :: ja12(:)
complex(kind=8) ,pointer  :: ja13(:)
complex(kind=16),pointer  :: ja14(:)
character       ,pointer  :: ja15(:)
ja01=>null() ; ja02=>null() ; ja03=>null() ; ja04=>null() ; ja05=>null() ;
ja06=>null() ; ja07=>null() ; ja08=>null() ; ja09=>null() ; ja10=>null() ;
ja11=>null() ; ja12=>null() ; ja13=>null() ; ja14=>null() ; ja15=>null() ;
end subroutine
subroutine isub02(ja01,ja02,ja03,ja04,ja05,ja06,ja07,ja08,ja09,ja10,&
                 ja11,ja12,ja13,ja14,ja15)
integer(kind=1) ,pointer  :: ja01(:)
integer(kind=2) ,pointer  :: ja02(:)
integer(kind=4) ,pointer  :: ja03(:)
integer(kind=8) ,pointer  :: ja04(:)
logical(kind=1) ,pointer  :: ja05(:)
logical(kind=2) ,pointer  :: ja06(:)
logical(kind=4) ,pointer  :: ja07(:)
logical(kind=8) ,pointer  :: ja08(:)
real(kind=4)    ,pointer  :: ja09(:)
real(kind=8)    ,pointer  :: ja10(:)
real(kind=16)   ,pointer  :: ja11(:)
complex(kind=4) ,pointer  :: ja12(:)
complex(kind=8) ,pointer  :: ja13(:)
complex(kind=16),pointer  :: ja14(:)
character       ,pointer  :: ja15(:)
ja01=>it01 ; ja02=>it02 ; ja03=>it03 ; ja04=>it04 ; ja05=>it05 ;
ja06=>it06 ; ja07=>it07 ; ja08=>it08 ; ja09=>it09 ; ja10=>it10 ;
ja11=>it11 ; ja12=>it12 ; ja13=>it13 ; ja14=>it14 ; ja15=>it15 ;
if (.not.associated(ja01,ia01)) write(6,*) "NG"
if (.not.associated(ja02,ia02)) write(6,*) "NG"
if (.not.associated(ja03,ia03)) write(6,*) "NG"
if (.not.associated(ja04,ia04)) write(6,*) "NG"
if (.not.associated(ja05,ia05)) write(6,*) "NG"
if (.not.associated(ja06,ia06)) write(6,*) "NG"
if (.not.associated(ja07,ia07)) write(6,*) "NG"
if (.not.associated(ja08,ia08)) write(6,*) "NG"
if (.not.associated(ja09,ia09)) write(6,*) "NG"
if (.not.associated(ja10,ia10)) write(6,*) "NG"
if (.not.associated(ja11,ia11)) write(6,*) "NG"
if (.not.associated(ja12,ia12)) write(6,*) "NG"
if (.not.associated(ja13,ia13)) write(6,*) "NG"
if (.not.associated(ja14,ia14)) write(6,*) "NG"
if (.not.associated(ja15,ia15)) write(6,*) "NG"
end subroutine
end

subroutine sub03()
integer(kind=1) ,pointer  :: ia01(:,:,:)
integer(kind=2) ,pointer  :: ia02(:,:,:)
integer(kind=4) ,pointer  :: ia03(:,:,:)
integer(kind=8) ,pointer  :: ia04(:,:,:)
logical(kind=1) ,pointer  :: ia05(:,:,:)
logical(kind=2) ,pointer  :: ia06(:,:,:)
logical(kind=4) ,pointer  :: ia07(:,:,:)
logical(kind=8) ,pointer  :: ia08(:,:,:)
real(kind=4)    ,pointer  :: ia09(:,:,:)
real(kind=8)    ,pointer  :: ia10(:,:,:)
real(kind=16)   ,pointer  :: ia11(:,:,:)
complex(kind=4) ,pointer  :: ia12(:,:,:)
complex(kind=8) ,pointer  :: ia13(:,:,:)
complex(kind=16),pointer  :: ia14(:,:,:)
character       ,pointer  :: ia15(:,:,:)
integer(kind=1) ,target   :: it01(2,2,2)
integer(kind=2) ,target   :: it02(2,2,2)
integer(kind=4) ,target   :: it03(2,2,2)
integer(kind=8) ,target   :: it04(2,2,2)
logical(kind=1) ,target   :: it05(2,2,2)
logical(kind=2) ,target   :: it06(2,2,2)
logical(kind=4) ,target   :: it07(2,2,2)
logical(kind=8) ,target   :: it08(2,2,2)
real(kind=4)    ,target   :: it09(2,2,2)
real(kind=8)    ,target   :: it10(2,2,2)
real(kind=16)   ,target   :: it11(2,2,2)
complex(kind=4) ,target   :: it12(2,2,2)
complex(kind=8) ,target   :: it13(2,2,2)
complex(kind=16),target   :: it14(2,2,2)
character       ,target   :: it15(2,2,2)
ia01=>it01 ; ia02=>it02 ; ia03=>it03 ; ia04=>it04 ; ia05=>it05 ;
ia06=>it06 ; ia07=>it07 ; ia08=>it08 ; ia09=>it09 ; ia10=>it10 ;
ia11=>it11 ; ia12=>it12 ; ia13=>it13 ; ia14=>it14 ; ia15=>it15 ;
call isub01(ia01,ia02,ia03,ia04,ia05,ia06,ia07,ia08,ia09,ia10,&
         ia11,ia12,ia13,ia14,ia15)
call isub02(ia01,ia02,ia03,ia04,ia05,ia06,ia07,ia08,ia09,ia10,&
         ia11,ia12,ia13,ia14,ia15)
contains
subroutine isub01(ja01,ja02,ja03,ja04,ja05,ja06,ja07,ja08,ja09,ja10,&
                 ja11,ja12,ja13,ja14,ja15)
integer(kind=1) ,pointer  :: ja01(:,:,:)
integer(kind=2) ,pointer  :: ja02(:,:,:)
integer(kind=4) ,pointer  :: ja03(:,:,:)
integer(kind=8) ,pointer  :: ja04(:,:,:)
logical(kind=1) ,pointer  :: ja05(:,:,:)
logical(kind=2) ,pointer  :: ja06(:,:,:)
logical(kind=4) ,pointer  :: ja07(:,:,:)
logical(kind=8) ,pointer  :: ja08(:,:,:)
real(kind=4)    ,pointer  :: ja09(:,:,:)
real(kind=8)    ,pointer  :: ja10(:,:,:)
real(kind=16)   ,pointer  :: ja11(:,:,:)
complex(kind=4) ,pointer  :: ja12(:,:,:)
complex(kind=8) ,pointer  :: ja13(:,:,:)
complex(kind=16),pointer  :: ja14(:,:,:)
character       ,pointer  :: ja15(:,:,:)
ja01=>null() ; ja02=>null() ; ja03=>null() ; ja04=>null() ; ja05=>null() ;
ja06=>null() ; ja07=>null() ; ja08=>null() ; ja09=>null() ; ja10=>null() ;
ja11=>null() ; ja12=>null() ; ja13=>null() ; ja14=>null() ; ja15=>null() ;
end subroutine
subroutine isub02(ja01,ja02,ja03,ja04,ja05,ja06,ja07,ja08,ja09,ja10,&
                 ja11,ja12,ja13,ja14,ja15)
integer(kind=1) ,pointer  :: ja01(:,:,:)
integer(kind=2) ,pointer  :: ja02(:,:,:)
integer(kind=4) ,pointer  :: ja03(:,:,:)
integer(kind=8) ,pointer  :: ja04(:,:,:)
logical(kind=1) ,pointer  :: ja05(:,:,:)
logical(kind=2) ,pointer  :: ja06(:,:,:)
logical(kind=4) ,pointer  :: ja07(:,:,:)
logical(kind=8) ,pointer  :: ja08(:,:,:)
real(kind=4)    ,pointer  :: ja09(:,:,:)
real(kind=8)    ,pointer  :: ja10(:,:,:)
real(kind=16)   ,pointer  :: ja11(:,:,:)
complex(kind=4) ,pointer  :: ja12(:,:,:)
complex(kind=8) ,pointer  :: ja13(:,:,:)
complex(kind=16),pointer  :: ja14(:,:,:)
character       ,pointer  :: ja15(:,:,:)
ja01=>it01 ; ja02=>it02 ; ja03=>it03 ; ja04=>it04 ; ja05=>it05 ;
ja06=>it06 ; ja07=>it07 ; ja08=>it08 ; ja09=>it09 ; ja10=>it10 ;
ja11=>it11 ; ja12=>it12 ; ja13=>it13 ; ja14=>it14 ; ja15=>it15 ;
if (.not.associated(ja01,ia01)) write(6,*) "NG"
if (.not.associated(ja02,ia02)) write(6,*) "NG"
if (.not.associated(ja03,ia03)) write(6,*) "NG"
if (.not.associated(ja04,ia04)) write(6,*) "NG"
if (.not.associated(ja05,ia05)) write(6,*) "NG"
if (.not.associated(ja06,ia06)) write(6,*) "NG"
if (.not.associated(ja07,ia07)) write(6,*) "NG"
if (.not.associated(ja08,ia08)) write(6,*) "NG"
if (.not.associated(ja09,ia09)) write(6,*) "NG"
if (.not.associated(ja10,ia10)) write(6,*) "NG"
if (.not.associated(ja11,ia11)) write(6,*) "NG"
if (.not.associated(ja12,ia12)) write(6,*) "NG"
if (.not.associated(ja13,ia13)) write(6,*) "NG"
if (.not.associated(ja14,ia14)) write(6,*) "NG"
if (.not.associated(ja15,ia15)) write(6,*) "NG"
end subroutine
end
