c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      integer,parameter:: i1=1,i2=2
      character*(i2)::c1
      character*(i2)::c2
      dimension     c2(i1:i2)
      dimension     c3(i1:i2)
      character*(i2),dimension(i1:i2)::c4
      character*(i2)::c3
      character*(i2),dimension( 1: 2)::c5
      character*( 2),dimension(i1:i2)::c6
      integer,dimension(i1:i2)::j1/1,2/
      call       s11(i1,i2,c1,c2,c3,c4,c5,c6,j1)
      call       s12(i1,i2,c1,c2,c3,c4,c5,c6,j1)
      call       s13(i1,i2,c1,c2,c3,c4,c5,c6,j1)
      end
      subroutine s11(i1,i2,c1,c2,c3,c4,c5,c6,j1)
      entry      s12(i1,i2,c1,c2,c3,c4,c5,c6,j1)
      entry      s13(i1,i2,c1,c2,c3,c4,c5,c6,j1)
      integer i1,i2
      integer,dimension(i1:i2)::j1
      character*(i2)::c1
      character*(i2)::c2
      dimension     c2(i1:i2)
      dimension     c3(i1:i2)
      character*(i2),dimension(i1:i2)::c4
      character*(i2)::c3
      character*(i2),dimension( 1: 2)::c5
      character*( 2),dimension(i1:i2)::c6
      character::x01(len((/c1(:)/)))
      character::x02(len((/c2(j1(i1):j1(i2):j1(i1))(:)/)))
      character::x03(len((/c3(j1(i1):j1(i2):j1(i1))(:)/)))
      character::x04(len((/c4(j1(i1):j1(i2):j1(i1))(:)/)))
      character::x05(len((/c5(j1(i1):j1(i2):j1(i1))(:)/)))
      character::x06(len((/c6(j1(i1):j1(i2):j1(i1))(:)/)))
      character::x07(ubound((/c2(j1(i1):j1(i2):j1(i1))(:)/),dim=1))
      character::x08(ubound((/c3(j1(i1):j1(i2):j1(i1))(:)/),dim=1))
      character::x09(ubound((/c4(j1(i1):j1(i2):j1(i1))(:)/),dim=1))
      character::x10(ubound((/c5(j1(i1):j1(i2):j1(i1))(:)/),dim=1))
      character::x11(ubound((/c6(j1(i1):j1(i2):j1(i1))(:)/),dim=1))
      k=2
      if (ubound(x01,dim=1)/=k)print *,'fail'
      if (ubound(x02,dim=1)/=k)print *,'fail'
      if (ubound(x03,dim=1)/=k)print *,'fail'
      if (ubound(x04,dim=1)/=k)print *,'fail'
      if (ubound(x05,dim=1)/=k)print *,'fail'
      if (ubound(x06,dim=1)/=k)print *,'fail'
      if (ubound(x07,dim=1)/=k)print *,'fail'
      if (ubound(x08,dim=1)/=k)print *,'fail'
      if (ubound(x09,dim=1)/=k)print *,'fail'
      if (ubound(x10,dim=1)/=k)print *,'fail'
      if (ubound(x11,dim=1)/=k)print *,'fail'
      entry ent11
      entry ent12
      entry ent13
      end
