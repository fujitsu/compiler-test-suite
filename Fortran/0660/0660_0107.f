      call ss
      print *,' *** pass ***'
      end
      subroutine ss
      integer*1  res1
      integer*2  res2
      integer*4  res4
      integer*8  res8
      real*4   r4
      real*8   r8
      real*16  r16
      r4=1.4
      r8=2.5d0
      r16=3.4q0
      res1 = nint(r4,1)
      res2 = nint(r4,2)
      res4 = nint(r4,4)
      res8 = nint(r4,8)
      if (res1.ne.nint(r4,1_1)) print *,"fail"
      if (res1.ne.nint(r4,1_2)) print *,"fail"
      if (res1.ne.nint(r4,1_8)) print *,"fail"
      if (res2.ne.nint(r4,2_1)) print *,"fail"
      if (res2.ne.nint(r4,2_2)) print *,"fail"
      if (res2.ne.nint(r4,2_8)) print *,"fail"
      if (res4.ne.nint(r4,4_1)) print *,"fail"
      if (res4.ne.nint(r4,4_2)) print *,"fail"
      if (res4.ne.nint(r4,4_8)) print *,"fail"
      if (res8.ne.nint(r4,8_1)) print *,"fail"
      if (res8.ne.nint(r4,8_2)) print *,"fail"
      if (res8.ne.nint(r4,8_8)) print *,"fail"
      res1 = nint(r8,1)
      res2 = nint(r8,2)
      res4 = nint(r8,4)
      res8 = nint(r8,8)
      if (res1.ne.nint(r8,1_1)) print *,"fail"
      if (res1.ne.nint(r8,1_2)) print *,"fail"
      if (res1.ne.nint(r8,1_8)) print *,"fail"
      if (res2.ne.nint(r8,2_1)) print *,"fail"
      if (res2.ne.nint(r8,2_2)) print *,"fail"
      if (res2.ne.nint(r8,2_8)) print *,"fail"
      if (res4.ne.nint(r8,4_1)) print *,"fail"
      if (res4.ne.nint(r8,4_2)) print *,"fail"
      if (res4.ne.nint(r8,4_8)) print *,"fail"
      if (res8.ne.nint(r8,8_1)) print *,"fail"
      if (res8.ne.nint(r8,8_2)) print *,"fail"
      if (res8.ne.nint(r8,8_8)) print *,"fail"
      res1 = nint(r16,1)
      res2 = nint(r16,2)
      res4 = nint(r16,4)
      res8 = nint(r16,8)
      if (res1.ne.nint(r16,1_1)) print *,"fail"
      if (res1.ne.nint(r16,1_2)) print *,"fail"
      if (res1.ne.nint(r16,1_8)) print *,"fail"
      if (res2.ne.nint(r16,2_1)) print *,"fail"
      if (res2.ne.nint(r16,2_2)) print *,"fail"
      if (res2.ne.nint(r16,2_8)) print *,"fail"
      if (res4.ne.nint(r16,4_1)) print *,"fail"
      if (res4.ne.nint(r16,4_2)) print *,"fail"
      if (res4.ne.nint(r16,4_8)) print *,"fail"
      if (res8.ne.nint(r16,8_1)) print *,"fail"
      if (res8.ne.nint(r16,8_2)) print *,"fail"
      if (res8.ne.nint(r16,8_8)) print *,"fail"
      end
