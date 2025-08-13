c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      integer,parameter:: i1=1,i2=2
      character*(i2)::c1
      integer j(2,2)/0,0,0,2/
      call       s11(i1,i2,c1,j)
      call       s12(i1,i2,c1,j)
      call       s13(i1,i2,c1,j)
      end
      subroutine s11(i1,i2,c1,j)
      save
      entry      s12(i1,i2,c1,j)
      entry      s13(i1,i2,c1,j)
      character*(i2)::c1
      integer j(i1:i2,i1:i2)
      character::x01(len((/c1(:)/)))
      character::x02(len((/(c1(:),k=j(2,2),j(i2,i2),j(i1+i1,i2*i1))/)))
      character::x03(ubound((/c1(:),c1(i1:i2)/),dim=1))
      character::x04(ubound((/(c1(:),
     1               k=j(2,2)-i1,j(i2,i2),j(i1+i1,i2*i1)-i1)/),dim=i1))
      if (ubound(x01,dim=1)/=2)print *,'fail'
      if (ubound(x02,dim=1)/=2)print *,'fail'
      if (ubound(x03,dim=1)/=2)print *,'fail'
      if (ubound(x04,dim=1)/=2)print *,'fail'
      x01='x';x02='y';x03='z';x04='w'
      if (any(x01/='x'))print *,'fail'
      if (any(x02/='y'))print *,'fail'
      if (any(x03/='z'))print *,'fail'
      if (any(x04/='w'))print *,'fail'
      end
