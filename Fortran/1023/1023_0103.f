      module m1
      integer k,j
      contains
      subroutine s15(a); entry      t15(a); entry      u15(a)
      integer a(k:,k:); a(:,:)=a(:,2:1:-1)
      callc((/ubound(a,dim=1),ubound(a,dim=2)/))
      entry q15;entry f15
      end subroutine
      subroutine s16(a); entry      t16(a); entry      u16(a)
      integer a( :,k:); a(:,:)=a(:,2:1:-1)
      callc((/ubound(a,dim=1),ubound(a,dim=2)/))
      entry q16;entry f16
      end subroutine
      subroutine s17(a); entry      t17(a); entry      u17(a)
      integer a(k:, :); a(:,:)=a(:,2:1:-1)
      callc((/ubound(a,dim=1),ubound(a,dim=2)/))
      entry q17;entry f17
      end subroutine
      subroutine s18(a); entry      t18(a); entry      u18(a)
      integer a(k:, :); a(:,:)=a(:,2:1:-1)
      callc((/ubound(a,dim=1),ubound(a,dim=2)/))
      entry q18;entry f18
      end subroutine
      end module
      subroutine c()
      end
      end



