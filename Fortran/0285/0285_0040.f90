character(len=4)::st1(2)='xxpa',st2(2)='xxss'
logical::mask1(2)=.false.
mask1(1)=.true.

associate(aa=>merge(st1,st2,mask1))
 if(aa(1)/='xxpa' .and. aa(2)/='xxss') print*,101
 print*,aa(:)(3:4)
end associate
end
