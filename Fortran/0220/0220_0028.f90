 module mod01
   type :: ty
     sequence
     integer::x1
    end type
 end 
 module mod02

   contains
     subroutine foo(var)
   type :: ty
     sequence
     integer::x1
    end type
       type(ty) :: var
 var%x1=1
  if (var%x1/=1) print *,101
     end subroutine 
 end 
 module mod03
   use mod02
   use mod01
    private
    public :: ty
contains 
subroutine sss
       type(ty) :: var
call foo(var)
end subroutine
 end 
 subroutine sub
 use mod03
 type (ty) :: var
 var%x1=1
  if (var%x1/=1) print *,101
 end
call sub
 print *,'pass'
 end
