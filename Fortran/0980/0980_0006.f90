module mod
 type ty0
  integer :: ii
 end type
 type ty1
  type(ty0) :: i
 end type
 type(ty1) :: a 
 contains
 subroutine subb()
  type(ty1) :: b
  call test(a%i)
  call test(b%i)
  call isub()
  contains
   subroutine isub()
    type(ty1) :: c
    call test(c%i)
    call test(a%i)
    call test(b%i)
   end subroutine
 end subroutine
 end

 subroutine test(aa)
 use mod
 type(ty0) :: aa
 end subroutine

 call test01()
 print *,"pass"
 end

 subroutine test01()
 use mod
 call subb()
 end subroutine
