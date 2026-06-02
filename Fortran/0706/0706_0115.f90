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
      call       s11(i1,i2,c1,c2,c3,c4,c5,c6)
      end
      subroutine s11(i1,i2,c1,c2,c3,c4,c5,c6)
      integer i1,i2
      integer,dimension(i1:i2)::j1,j2
      character*(i2)::c1
      character*(i2)::c2
      dimension     c2(i1:i2)
      dimension     c3(i1:i2)
      character*(i2),dimension(i1:i2)::c4
      character*(i2)::c3
      character*(i2),dimension( 1: 2)::c5
      character*( 2),dimension(i1:i2)::c6
      integer ::v(2)=(/1,2/)
      character::x01(len(c1(:)))
      character::x02(len(c2(v(:))(:)))
      character::x03(len(c3(v(:))(:)))
      character::x04(len(c4(v(:))(:)))
      character::x05(len(c5(v(:))(:)))
      character::x06(len(c6(v(:))(:)))
      character::x07(ubound(c2(v(:))(:),dim=1))
      character::x08(ubound(c3(v(:))(:),dim=1))
      character::x09(ubound(c4(v(:))(:),dim=1))
      character::x10(ubound(c5(v(:))(:),dim=1))
      character::x11(ubound(c6(v(:))(:),dim=1))
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
      end
