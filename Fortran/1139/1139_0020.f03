module m1
   type, abstract :: Abstract_ty
      private
   end type 
   type:: ty_a
      integer,allocatable::a_x1
      integer,allocatable::a_x2
      integer,allocatable::a_x3
   end type
   type,extends(Abstract_ty):: ty
      type(ty_a),allocatable:: ty_1
      class(Abstract_ty),allocatable:: ty_2
   end type

   contains
    function begin() result(r)
      class(Abstract_ty),allocatable::r
      allocate( r , source= f() )
      k=0
      select type(r)
       type is (ty)
!         print '(z16.16)',loc(r)
!         print '(z16.16)',loc(r%ty_1)
!         print '(z16.16)',loc(r%ty_1%a_x1)
         if (r%ty_1%a_x1/=1) print *,2011
          k=1
      end select
      if (k/=1)print *,902
    end function
    function f() result(r)
      type(ty),allocatable::r
      allocate(r)
      allocate(ty::r%ty_2)
      allocate(r%ty_1)
      allocate(r%ty_1%a_x1)
      r%ty_1%a_x1=1
!         print '(z16.16)',loc(r)
!         print '(z16.16)',loc(r%ty_1)
!         print '(z16.16)',loc(r%ty_1%a_x1)
         if (r%ty_1%a_x1/=1) print *,2021
    end function
end
use m1
      class(Abstract_ty),allocatable::x
      x=begin()
      k=0
      select type(x)
       type is (ty)
         if (x%ty_1%a_x1/=1) print *,2001
          k=1
      end select
      if (k/=1)print *,901
print *,'sngg201k : pass'
end
