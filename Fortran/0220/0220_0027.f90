 module mod01
   type :: ty
     integer::x1
    end type
 end 
 module mod02

   contains
     subroutine foox
     end subroutine 
     subroutine foo(var)
       use mod01         
       type(ty) :: var
     end subroutine 
 end 
 module mod03
   use mod02
   use mod01
    private
    public :: ty
 end 
 subroutine sub
 use mod03
 type (ty) :: var
 end

call sub
 print *,'pass'
 end
