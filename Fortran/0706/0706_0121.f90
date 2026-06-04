c
c
      call s1
      print *,'pass'
      end
      module m1
      type st1; integer i(2); end type
      type st2; character*2 c(2); end type
      end module
      subroutine s1
      use m1
      parameter (i1=1,i2=2)
      character(len=i2)::c1
      integer j(i1:i2,i1:i2)
      type (st2)::std(i1:i2,i1:i2)
      call       s11(i1,i2,c1,j,std)
      end
      subroutine s11(i1,i2,c1,j,std)
      use m1
      integer j(i1:i2,i1:i2)
      character(len=i2)::c1
      type (st2)::std(i1:i2,i1:i2)
      character::x01(len((/std(i2,i2)%c(i1:i2)(:)/)))
      character::x02(len((/std(i2,i2)%c(i1:i2)(i1:i2)/)))
      character::x03(len((/std(i2,i2)%c(i2-i1:i1+i1:i1*2)(i2-i1:i2)/)))
      character::x04(len((/std(i1*2,i1+i1)%c(i1:i2)(i1:i2)/)))
      character::x05(ubound((/st1(j(i2,i1+i1)),st1(j(2,2))/),dim=1))
      character::x06(ubound((/st2(c1(:)),st2(c1(:))/),dim=1))
      character::x07(
     1     ubound((/st2(c1(i2-i1:i1+i1)),st2(c1(i1:i2))/),dim=1))
      character::x08(ubound((/st1(len(c1(:))),st1(j(i1+i1,2))/),dim=1))
      character::x09(ubound(
     1               (/st1(len(c1(i2-i1:i1+i1))),st1(i1)/),dim=1))
      x01='x'; x02='x'; x03='x'; x04='x'; x05='x'; x06='x'; x07='x'
      x08='x'; x09='x'
      if (ubound(x01,dim=1)/=2)print *,'fail'
      if (ubound(x02,dim=1)/=2)print *,'fail'
      if (ubound(x03,dim=1)/=2)print *,'fail'
      if (ubound(x04,dim=1)/=2)print *,'fail'
      if (ubound(x05,dim=1)/=2)print *,'fail'
      if (ubound(x06,dim=1)/=2)print *,'fail'
      if (ubound(x07,dim=1)/=2)print *,'fail'
      if (ubound(x08,dim=1)/=2)print *,'fail'
      if (ubound(x09,dim=1)/=2)print *,'fail'
      if (any(x01/='x'))print *,'fail'
      if (any(x02/='x'))print *,'fail'
      if (any(x03/='x'))print *,'fail'
      if (any(x04/='x'))print *,'fail'
      if (any(x05/='x'))print *,'fail'
      if (any(x06/='x'))print *,'fail'
      if (any(x07/='x'))print *,'fail'
      if (any(x08/='x'))print *,'fail'
      if (any(x09/='x'))print *,'fail'
      entry e11
      entry e12
      entry e13
      end
