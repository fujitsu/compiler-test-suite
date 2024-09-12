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
 interface assignment(=)
    subroutine as(x1,x2)
      use m0
      type(xx),intent(out)::x1
      integer,intent(in)::x2
    end subroutine
 end interface
 interface gen
    function nxp(x1,x2)
      use m0
      type(xx),intent(in)::x1
      integer,intent(in)::x2
    end function
 end interface
 integer::operator=104
 integer::operator_=103
end
module m12
 integer::operator=101
end
module m13
 integer::operator_=111
 interface assignment(=)
    subroutine as(x1,x2)
      use m0
      type(xx),intent(out)::x1
      integer,intent(in)::x2
    end subroutine
 end interface
 interface gen
    function nxp(x1,x2)
      use m0
      type(xx),intent(in)::x1
      integer,intent(in)::x2
    end function
 end interface
end
subroutine s01
 use m13,only:operator=>gen,assignment(=),operatory=>operator_
 use m0,only:xx
 type(xx)::z
 if (operatory/=111)print *,2101
 if (operator(xx(1),2)/=13)print *,22105
 z=2
 if (z%x1/=2)print *,22106
end
subroutine s02
 use m11,only:operator(.o.)=>operator(.opa.),&
              operator=>gen,assignment(=), &
              xx , &
              op=>operator 
 type(xx)::z
 if (operator(xx(1),2)/=13)print *,221051
 z=2
 if (z%x1/=2)print *,221061
 if ((xx(1).o.xx(2))/=3)print *,22101
 if (op      /=104)print *,501
end
subroutine s03
 use m11,only:xx,&
         operator(.oa.)=>operator(.opb.),&
              operator=>gen,assignment(=), &
         operator(.ob.)=>operator(.opa.), &
              op=>operator
 type(xx)::z
 if (operator(xx(1),2)/=13)print *,221051
 z=2
 if (z%x1/=2)print *,221061
 if ((xx(1).ob.xx(2))/=3)print *,22101
 if ((xx(1).oa.  (2))/=13)print *,22102
 if (op      /=104)print *,5011
end
subroutine s04
 use m11,only: xx, &
         op=>     operator, &
         operator(.o.)=>operator(.opa.),&
              assignment(=),operator=>gen, &
         operato=>operator_
 type(xx)::z
 if (operator(xx(1),2)/=13)print *,221053
 z=2
 if (z%x1/=2)print *,221063
 if ((xx(1).o.xx(2))/=3)print *,23101
 if (operato /=103)print *,23101
 if (op      /=104)print *,5012
end
subroutine s05
 use m11,only: xx, &
         op=>     operator, &
         operato =>operator_, &
              assignment(=), operator=>gen, &
         operator(.oa.)=>operator(.opb.),&
         operator(.ob.)=>operator(.opa.)
 type(xx)::z
 if (operator(xx(1),2)/=13)print *,221052
 z=2
 if (z%x1/=2)print *,221064
 if ((xx(1).ob.xx(2))/=3)print *,24101
 if ((xx(1).oa.  (2))/=13)print *,24102
 if (operato /=103)print *,24103
 if (op      /=104)print *,5013
end
subroutine s06
 use m12,only:operator=>operator
 if (operator/=101)print *,32101
end
subroutine s07
 use m11,only: xx, &
         operato =>operator_, &
         operator(.oa.)=>operator(.opb.),&
              assignment(=), operator=> gen ,&
         operator(.ob.)=>operator(.opa.)
 integer::op=109
 type(xx)::z
 if (operator(xx(1),2)/=13)print *,221052
 z=2
 if (z%x1/=2)print *,221064
 if ((xx(1).ob.xx(2))/=3)print *,24101
 if ((xx(1).oa.  (2))/=13)print *,24102
 if (operato /=103)print *,24103
 if (op      /=109)print *,5014
end

call s01
call s02
call s03
call s04
call s05
call s06
call s07
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
    subroutine as(x1,x2)
      use m0
      type(xx),intent(out)::x1
      integer,intent(in)::x2
      x1%x1=x2
    end subroutine
    function nxp(x1,x2)
      use m0
      type(xx),intent(in)::x1
      integer,intent(in)::x2
      nxp=x1%x1+x2+10
    end function
