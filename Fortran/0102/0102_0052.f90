logical,parameter::a=BGT(Z'FF',J=0_1)
logical,parameter::b=BGT(Z'FF',J=HUGE(1_1))
logical,parameter::c=BGT(Z'FF',J=127_1)
logical,parameter::d=BGT(Z'FFFF',J=HUGE(0_2))
logical,parameter::e=BGT(Z'FFFF',J=127_2)
logical,parameter::f=BGT(Z'FFFFFFFF',J=0_4)
logical,parameter::g=BGT(Z'FFFFFFFF',J=HUGE(127_4))
logical,parameter::h=BGT(Z'FFFFFFFF',J=13423_4)
logical,parameter::i=BGT(Z'FFFFFFFFFFFFFFFF',J=0_8)
logical,parameter::j=BGT(Z'FFFFFFFFFFFFFFFF',J=HUGE(1221_8))
logical,parameter::k=BGT(Z'FFFFFFFFFFFFFFFF',J=122313313_8)
logical,parameter::l=BGT(Z'FF',Z'FC')
if(a .neqv. .true.)print*,"100"
if(b .neqv. .true.)print*,"101"
if(c .neqv. .true.)print*,"102"
if(d .neqv. .true.)print*,"103"
if(e .neqv. .true.)print*,"104"
if(f .neqv. .true.)print*,"105"
if(g .neqv. .true.)print*,"106"
if(h .neqv. .true.)print*,"107"
if(i .neqv. .true.)print*,"108"
if(j .neqv. .true.)print*,"109"
if(k .neqv. .true.)print*,"110"
if(l .neqv. .true.)print*,"111"
print*,"PASS"
end
