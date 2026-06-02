 call s1
 print *,'pass'
 end
 module m1
   integer ::i1=11,i2=12,i3=13
   namelist /n11/i1,i2,i3
   namelist /n12/i1,i2,i3
   namelist /n13/i1,i2,i3
   namelist /n14/i1,i2,i3
 end
 module mm2
 use m1,j1=>i1,j2=>i2,j3=>i3,n12r=>n12,n14r=>n14
 end
 module m2
 use mm2
 use m1,only:i1,i2,i3
 namelist /n21/j1,j2,j3
 namelist /n22/j1,j2,j3
 namelist /n23/i1,i2,i3
 end
 subroutine s1
 use m2,k1=>j1,k2=>j2,k3=>j3,n22r=>n22,n13r=>n13,n14rr=>n14r
 use m1,only:i1,i2,i3
 use m2,only:j1,j2,j3
 use m1,only:n14
 use m2,only:n22
 namelist /n31/k1,k2,k3
 namelist /n32/i1,i2,i3
 namelist /n33/j1,j2,j3
  write(21,n11)
  write(22,n12r)
  write(23,n13r)
  write(24,n14rr)
  write(25,n21)
  write(26,n22r)
  write(27,n23)
  write(28,n31)
  write(29,n32)
  write(30,n33)
  write(31,n14)
  write(32,n22)
  call chk21; call chk22; call chk23; call chk24; call chk25; call chk26; call chk27; call chk28; call chk29;call chk30;call chk31;call chk32
  end
 subroutine chk21
   namelist /n11/i1,i2,i3
   iu=21; rewind iu; read(iu,n11)
   if (i1/=11)print *,'fail'; if (i2/=12)print *,'fail'; if (i3/=13)print *,'fail'
end
 subroutine chk22
   namelist /n12/i1,i2,i3
   iu=22; rewind iu; read(iu,n12)
   if (i1/=11)print *,'fail'; if (i2/=12)print *,'fail'; if (i3/=13)print *,'fail'
end
 subroutine chk23
   namelist /n13/i1,i2,i3
   iu=23; rewind iu; read(iu,n13)
   if (i1/=11)print *,'fail'; if (i2/=12)print *,'fail'; if (i3/=13)print *,'fail'
end
 subroutine chk24
   namelist /n14/i1,i2,i3
   iu=24; rewind iu; read(iu,n14)
   if (i1/=11)print *,'fail'; if (i2/=12)print *,'fail'; if (i3/=13)print *,'fail'
end
 subroutine chk25
   namelist /n21/j1,j2,j3
   iu=25; rewind iu; read(iu,n21)
   if (j1/=11)print *,'fail'; if (j2/=12)print *,'fail'; if (j3/=13)print *,'fail'
end
 subroutine chk26
   namelist /n22/j1,j2,j3
   iu=26; rewind iu; read(iu,n22)
   if (j1/=11)print *,'fail'; if (j2/=12)print *,'fail'; if (j3/=13)print *,'fail'
end
 subroutine chk27
   namelist /n23/i1,i2,i3
   iu=27; rewind iu; read(iu,n23)
   if (i1/=11)print *,'fail'; if (i2/=12)print *,'fail'; if (i3/=13)print *,'fail'
end
 subroutine chk28
   namelist /n31/k1,k2,k3
   iu=28; rewind iu; read(iu,n31)
   if (k1/=11)print *,'fail'; if (k2/=12)print *,'fail'; if (k3/=13)print *,'fail'
end
 subroutine chk29
   namelist /n32/i1,i2,i3
   iu=29; rewind iu; read(iu,n32)
   if (i1/=11)print *,'fail'; if (i2/=12)print *,'fail'; if (i3/=13)print *,'fail'
end
 subroutine chk30
   namelist /n33/j1,j2,j3
   iu=30; rewind iu; read(iu,n33)
   if (j1/=11)print *,'fail'; if (j2/=12)print *,'fail'; if (j3/=13)print *,'fail'
end
 subroutine chk31
   namelist /n14/i1,i2,i3
   iu=31; rewind iu; read(iu,n14)
   if (i1/=11)print *,'fail'; if (i2/=12)print *,'fail'; if (i3/=13)print *,'fail'
end
 subroutine chk32
   namelist /n22/j1,j2,j3
   iu=32; rewind iu; read(iu,n22)
   if (j1/=11)print *,'fail'; if (j2/=12)print *,'fail'; if (j3/=13)print *,'fail'
end
