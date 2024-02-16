logical,parameter::a=BGE(Z'FF',J=0_1)
logical,parameter::b=BGE(Z'FF',J=HUGE(1_1))
logical,parameter::c=BGE(Z'FF',J=127_1)
logical,parameter::d=BGE(Z'FFFF',J=HUGE(0_2))
logical,parameter::e=BGE(Z'FFFF',J=127_2)
logical,parameter::f=BGE(Z'FFFFFFFF',J=0_4)
logical,parameter::g=BGE(Z'FFFFFFFF',J=HUGE(127_4))
logical,parameter::h=BGE(Z'FFFFFFFF',J=13423_4)
logical,parameter::i=BGE(Z'FFFFFFFFFFFFFFFF',J=0_8)
logical,parameter::j=BGE(Z'FFFFFFFFFFFFFFFF',J=HUGE(1221_8))
logical,parameter::k=BGE(Z'FFFFFFFFFFFFFFFF',J=122313313_8)
logical,parameter::l=BGE(Z'FF',Z'FC')
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
