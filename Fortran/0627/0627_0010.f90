module m0
  type xx
    integer::x1
  end type
end
module m11
use m0
 interface operator(.opa.)
    function ixp(x1,x2)
      use m0
      type(xx),intent(in)::x1,x2
    end function
 end interface
 interface operator(.opb.)
    function kxp(x1,x2)
      use m0
      type(xx),intent(in)::x1
      integer,intent(in)::x2
    end function
 end interface
 integer::operator_=103
 integer::operator=104
end
module m12
 integer::operator=101
end
module m13
 integer::operator_=111
end
subroutine s01
 use m13,operator=>operator_
 if (operator/=111)print *,2101
end
subroutine s02
 use m11,operator(.o.)=>operator(.opa.), &
         operator=>operator
 if ((xx(1).o.xx(2))/=3)print *,22101
 if (operator/=104)print *,21011
end
subroutine s03
 use m11,operator(.oa.)=>operator(.opb.),&
         operator=>operator, &
         operator(.ob.)=>operator(.opa.)
 if ((xx(1).ob.xx(2))/=3)print *,22101
 if ((xx(1).oa.  (2))/=13)print *,22102
 if (operator/=104)print *,21011
end
subroutine s04
 use m11,operator(.o.)=>operator(.opa.),&
         op      =>operator, &
         operator=>operator_
 if ((xx(1).o.xx(2))/=3)print *,23101
 if (operator/=103)print *,23101
 if (op      /=104)print *,210111
end
subroutine s05
 use m11,&
         op      =>operator, &
         operator=>operator_, &
         operator(.oa.)=>operator(.opb.),&
         operator(.ob.)=>operator(.opa.)
 if ((xx(1).ob.xx(2))/=3)print *,24101
 if ((xx(1).oa.  (2))/=13)print *,24102
 if (operator/=103)print *,24103
 if (op      /=104)print *,210112
end
subroutine s06
 use m12,operator=>operator
 if (operator/=101)print *,32101
end

call s01
call s02
call s03
call s04
call s05
call s06
print *,'pass'
end
    function ixp(x1,x2)
      use m0
      type(xx),intent(in)::x1,x2
      ixp=x1%x1+x2%x1
    end function
    function kxp(x1,x2)
      use m0
      type(xx),intent(in)::x1
      integer,intent(in)::x2
      kxp=x1%x1+x2+10
    end function
