      call ss
      print *,' *** pass ***'
      end
      subroutine ss
      real*4   r4, res4
      real*8   r8, res8
      real*16  r16, res16
      r4=1.0
      r8=2.0d0
      r16=3.0q0
      res4 = anint(r4,4)
      res8 = anint(r4,8)
      res16 = anint(r4,16)
      if (res4.ne.anint(r4,4_1)) print *,"fail"
      if (res4.ne.anint(r4,4_2)) print *,"fail"
      if (res4.ne.anint(r4,4_8)) print *,"fail"
      if (res8.ne.anint(r4,8_1)) print *,"fail"
      if (res8.ne.anint(r4,8_2)) print *,"fail"
      if (res8.ne.anint(r4,8_8)) print *,"fail"
      if (res16.ne.anint(r4,16_1)) print *,"fail"
      if (res16.ne.anint(r4,16_2)) print *,"fail"
      if (res16.ne.anint(r4,16_8)) print *,"fail"
      res4 = anint(r8,4)
      res8 = anint(r8,8)
      res16 = anint(r8,16)
      if (res4.ne.anint(r8,4_1)) print *,"fail"
      if (res4.ne.anint(r8,4_2)) print *,"fail"
      if (res4.ne.anint(r8,4_8)) print *,"fail"
      if (res8.ne.anint(r8,8_1)) print *,"fail"
      if (res8.ne.anint(r8,8_2)) print *,"fail"
      if (res8.ne.anint(r8,8_8)) print *,"fail"
      if (res16.ne.anint(r8,16_1)) print *,"fail"
      if (res16.ne.anint(r8,16_2)) print *,"fail"
      if (res16.ne.anint(r8,16_8)) print *,"fail"
      res4 = anint(r16,4)
      res8 = anint(r16,8)
      res16 = anint(r16,16)
      if (res4.ne.anint(r16,4_1)) print *,"fail"
      if (res4.ne.anint(r16,4_2)) print *,"fail"
      if (res4.ne.anint(r16,4_8)) print *,"fail"
      if (res8.ne.anint(r16,8_1)) print *,"fail"
      if (res8.ne.anint(r16,8_2)) print *,"fail"
      if (res8.ne.anint(r16,8_8)) print *,"fail"
      if (res16.ne.anint(r16,16_1)) print *,"fail"
      if (res16.ne.anint(r16,16_2)) print *,"fail"
      if (res16.ne.anint(r16,16_8)) print *,"fail"
      end
