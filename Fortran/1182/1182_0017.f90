module mod
interface 
  module subroutine s11(n)
  end
end interface
type :: ty
integer :: k
end type
  class(ty),pointer :: p
contains
subroutine smod(p,n)
  type,extends(ty)::ty2
    integer::k2_3(200)
  end type
        class(ty),pointer::p
   if (n==3) then
      allocate(ty2::p)
   else
      call smod2(p)
   endif
contains
subroutine smod2(p)
  type,extends(ty)::ty2
    integer::k2_3(300)
  end type
   class(ty),pointer::p
      allocate(ty2::p)
end subroutine
end subroutine
end
submodule (mod) smod
  type,extends(ty)::ty2
    integer::k2
  end type
  class(ty2),pointer :: p2
contains
  module subroutine s11(n)
    interface
      subroutine smod(p)
        import::ty
        class(ty),pointer::p
      end subroutine
      subroutine xx(p,n)
        import::ty
        class(ty),pointer::p
      end subroutine
    end interface
  allocate(p2)
select case(n)
 case(1)
      allocate(ty2::p)
 case(2)
      call smod(p)
 case(3,4)
      call xx(p,n)
end select
m=0
select type(p)
  type is(ty2)
   m=1
   p%k2=1
end select
select case(n)
 case(1)
  if (.not.extends_type_of(p2,p)) print *,1021
  if (.not.same_type_as(p2,p)) print *,1022
  if (m/=1) print *,1001
 case(2)
  if (extends_type_of(p2,p)) print *,1121
  if (same_type_as(p2,p)) print *,1122
  if (m/=0) print *,2001
end select
end 
end 
use mod
call s11(1)
call s11(2)
call s11(3)
call s11(4)
print*,"sngg254o : pass"
end
      subroutine xx(p,n)
        use mod,only:ty,smod
        class(ty),pointer::p
        call smod(p,n)
      end subroutine
      subroutine smod(p)
        use mod,only:ty
  type,extends(ty)::ty2
    integer::k2_2(100)
  end type
        class(ty),pointer::p
      allocate(ty2::p)
      end subroutine
