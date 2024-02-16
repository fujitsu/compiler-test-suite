logical,parameter::l1(2147483649_8) =  .true.
logical,parameter::l2(21474836410_8) =  PARITY(l1)
logical,parameter::l3(2147483) =  PARITY(l1,dim=1)
logical,parameter::l4(32764_2) =  PARITY(l1,dim=1)
logical,parameter::l5(32763_2,32763_2) =  .true.
logical,parameter::x1 = PARITY(l1)
logical,parameter::x2 = PARITY(l1,dim=1)
logical,parameter::x3 = PARITY(l2,dim=1)
logical,parameter::x4 = PARITY(l3,dim=1)
logical,parameter::x5 = PARITY(l4,dim=1)
logical,parameter::x6 = PARITY(l5)
if(x1 .neqv. .true.)print*,"100"
if(x2 .neqv. .true.)print*,"101"
if(x3 .neqv. .false.)print*,"102"
if(x4 .neqv. .true.)print*,"103"
if(x5 .neqv. .false.)print*,"104"
if(x6 .neqv. .true.)print*,"105"
print*,"PASS"
end

