logical,parameter::constvar=BGT(b'110',o'10')
logical,parameter::constvar1=BGT(z'2a',o'14')
logical,parameter::constvar2=BGT(b'101',z'0a')
logical,parameter::l1(3) = BGT(b'1100',[12,12,12])
logical,parameter::l2(2,2) = BGT(b'1100',reshape([12,13,12,12],[2,2]))
logical,parameter::l3(2,2) = BGT(o'14',reshape([12,18,12,12],[2,2]))
logical,parameter::l4(2,2) = BGT(z'c',reshape([12,12,12,13],[2,2]))
logical,parameter::l5(3) = BGT(b'1111',[12_2,12_2,12_2])
logical,parameter::l6(3) = BGT(o'21',[11_4,11_4,11_4])
logical,parameter::l7(3) = BGT(z'a',[10_8,10_8,10_8])
logical,parameter::l8 = BGT(z'a',z'a')
logical,parameter::l9(3) = BGT([12,12,12],b'1100')
logical,parameter::l10(3)= BGT([11,11,11],o'21')
logical,parameter::l11(3)= BGT([10,10,10],z'a')
logical,parameter::l12(3)= BGT([12,7,12],b'1000')
logical,parameter::l13(3)= BGT([11,11,11],o'7')
logical,parameter::l14(3)= BGT([10,10,3],z'5')
logical,parameter::l15 = BGT(z'a',10)
logical,parameter::l16 = BGT(b'1110',10)
logical,parameter::l17 = BGT(o'55',15)
logical,parameter::l18(3)= BGT([10,3,50],5)
if(any(l1 .neqv.[.false.,.false.,.false.]))print*,"100"
if(any(l2 .neqv.reshape([.false.,.false.,.false.,.false.],[2,2])))print*,"101"
if(any(l3 .neqv.reshape([.false.,.false.,.false.,.false.],[2,2])))print*,"102"
if(any(l4 .neqv.reshape([.false.,.false.,.false.,.false.],[2,2])))print*,"103"
if(any(l5 .neqv.[.true.,.true.,.true.]))print*,"104"
if(any(l6 .neqv.[.true.,.true.,.true.]))print*,"105"
if(any(l7 .neqv.[.false.,.false.,.false.]))print*,"106"
if(l8 .neqv. .false.)print*,"107"
if(any(l9 .neqv.[.false.,.false.,.false.]))print*,"108"
if(any(l10 .neqv.[.false.,.false.,.false.]))print*,"109"
if(any(l11 .neqv.[.false.,.false.,.false.]))print*,"110"
if(any(l12 .neqv.[.true.,.false.,.true.]))print*,"111"
if(any(l13 .neqv.[.true.,.true.,.true.]))print*,"112"
if(any(l14 .neqv.[.true.,.true.,.false.]))print*,"113"
if(l15 .neqv. .false.)print*,"114"
if(l16 .neqv. .true.)print*,"115"
if(l17 .neqv. .true.)print*,"116"
if(any(l18 .neqv.[.true.,.false.,.true.]))print*,"117"
if(constvar .neqv. .FALSE.)print*,"118"
if(constvar1 .neqv. .TRUE.)print*,"119"
if(constvar2 .neqv. .FALSE.)print*,"120"
print*,"PASS"
end

