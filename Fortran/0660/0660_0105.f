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
      res4 = aint(r4,4)
      res8 = aint(r4,8)
      res16 = aint(r4,16)
      if (res4.ne.aint(r4,4_1)) print *,"fail"
      if (res4.ne.aint(r4,4_2)) print *,"fail"
      if (res4.ne.aint(r4,4_8)) print *,"fail"
      if (res8.ne.aint(r4,8_1)) print *,"fail"
      if (res8.ne.aint(r4,8_2)) print *,"fail"
      if (res8.ne.aint(r4,8_8)) print *,"fail"
      if (res16.ne.aint(r4,16_1)) print *,"fail"
      if (res16.ne.aint(r4,16_2)) print *,"fail"
      if (res16.ne.aint(r4,16_8)) print *,"fail"
      res4 = aint(r8,4)
      res8 = aint(r8,8)
      res16 = aint(r8,16)
      if (res4.ne.aint(r8,4_1)) print *,"fail"
      if (res4.ne.aint(r8,4_2)) print *,"fail"
      if (res4.ne.aint(r8,4_8)) print *,"fail"
      if (res8.ne.aint(r8,8_1)) print *,"fail"
      if (res8.ne.aint(r8,8_2)) print *,"fail"
      if (res8.ne.aint(r8,8_8)) print *,"fail"
      if (res16.ne.aint(r8,16_1)) print *,"fail"
      if (res16.ne.aint(r8,16_2)) print *,"fail"
      if (res16.ne.aint(r8,16_8)) print *,"fail"
      res4 = aint(r16,4)
      res8 = aint(r16,8)
      res16 = aint(r16,16)
      if (res4.ne.aint(r16,4_1)) print *,"fail"
      if (res4.ne.aint(r16,4_2)) print *,"fail"
      if (res4.ne.aint(r16,4_8)) print *,"fail"
      if (res8.ne.aint(r16,8_1)) print *,"fail"
      if (res8.ne.aint(r16,8_2)) print *,"fail"
      if (res8.ne.aint(r16,8_8)) print *,"fail"
      if (res16.ne.aint(r16,16_1)) print *,"fail"
      if (res16.ne.aint(r16,16_2)) print *,"fail"
      if (res16.ne.aint(r16,16_8)) print *,"fail"
      end
