  intrinsic aint
  procedure (aint), pointer :: p1
  procedure (), pointer :: p2
  integer ::i1, i2
  real ::r4
   p1 => aint
   r4 = 1.1212
   i1 = p1(r4)
   if (i1.ne.1.e0) print *,'fail'
   p2 => aint
   r4 = 1.1212
   i2 = p2(r4)
   if (i2.ne.1.e0) print *,'fail'
   print *,"pass"
 end
