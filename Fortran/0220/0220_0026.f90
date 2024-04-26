 module mod01
   type :: ty
     integer::x1
    end type
 end 
 module mod02

   contains
     subroutine foo(var)
       use mod01         
       type(ty) :: var
     end subroutine 
 end 
 module mod03
   use mod02
   use mod01
    public :: ty
    private
 end 
 use mod03
 type (ty) :: var
 print *,'pass'
 end
