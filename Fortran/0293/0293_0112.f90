 print *,'pass'
 end
  module m1
    type a
      integer,dimension(:,:),pointer::a1
      type(a),dimension(:,:),pointer::ap
    end type
    type(a),dimension(:),pointer::ap
      type(a),dimension(:,:),pointer::zp
    integer::i2=2,i3=3
    contains
      function af(p)
       type(a),dimension(:,:),pointer::af,p
       af=>p
      end function
subroutine ss1
 zp=>ap(2)%ap(1:2:2,1:2:2)
  end subroutine
  end 
