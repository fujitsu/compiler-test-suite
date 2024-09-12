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
      integer:: ty_3(2)
      type(ty_a),allocatable:: ty_1
      class(Abstract_ty),allocatable:: ty_2
      integer:: ty_4(2)
   end type

   contains
    function begin() result(r)
      class(Abstract_ty),allocatable::r
      allocate( r , source= f() )
      k=0
      select type(r)
       type is (ty)
          k=1
          kk=0
         select type(d=>r%ty_2)
            type is(ty)
              if(any(d%ty_3/=[-1,-2])) print *,1001
              if(any(d%ty_4/=[-11,-12])) print *,1002
              kk=10
         end select
         if (kk/=10)print *,1902
         if (r%ty_1%a_x1/=1) print *,2011
      end select
      if (k/=1)print *,902
    end function
    function f() result(r)
      type(ty),allocatable::r
      type(ty)::v
      v%ty_3=[-1,-2]
      allocate(r)
      allocate(ty::r%ty_2)
kk=0
         select type(d=>r%ty_2)
            type is(ty)
              d%ty_3=[-1,-2]
              d%ty_4=[-11,-12]
              kk=10
         end select
if (kk/=10) print *,9001
      allocate(r%ty_1)
      allocate(r%ty_1%a_x1)
      r%ty_1%a_x1=1
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
print *,'pass'
end
