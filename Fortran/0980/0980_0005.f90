module mod
 type ty1
  integer :: ii
 end type
 type(ty1) :: a 
 contains
 subroutine subb()
  type(ty1) :: b
  call test(a)
  call test(b)
  call isub()
  contains
   subroutine isub()
    type(ty1) :: c
    call test(c)
    call test(a)
    call test(b)
   end subroutine
 end subroutine
 end

 subroutine test(aa)
 use mod
 type(ty1) :: aa
 end subroutine

 call test01()
 print *,"pass"
 end

 subroutine test01()
 use mod
 call subb()
 end subroutine
