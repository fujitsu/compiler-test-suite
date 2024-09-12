      USE IEEE_ARITHMETIC
       integer,parameter::t1= ieee_selected_real_kind(p =3,r=4,radix=2)
    integer,parameter::t2= selected_real_kind(p =3,r=4,radix=2)
         if(t1.ne.ieee_selected_real_kind(p =3,r=4,radix=2))print*,"101"
    if(t2.ne.selected_real_kind(p =3,r=4,radix=2))print*,"102"
    print*,"pass"
   end
