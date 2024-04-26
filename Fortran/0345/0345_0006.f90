 module m1
  type a
    integer(1) a1
    integer(8) a2
  end type
  type b
    integer(1) b1
    type (a)   b2(2)
  end type
  contains 

   function   chkca(x1,x2) result(r)
   type (a),intent(in)::x1(:),x2(:)
   logical(1)::r(size(x1))
   end function  

   function   chkst(x1,x2) result(r)
   type (b),intent(in)::x1(:),x2(:)
   logical(1)::r
   end function  

   subroutine sx1z(i8)
   type(a)   ::i8(2)
   logical(1)::ll(2)
   ll=chkca(i8,(/a(-12,-13),a(-14,-15)/))
   end subroutine

 end

  use m1
  type (b)::x(2)
  integer,pointer::v1(:),i2
  integer        ::v2(2),j2
  call sx1z(x( 2)%b2)
  call sx1z(x( 2)%b2(1:2))
  print *,'pass'
 end
