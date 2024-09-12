call sub01()
print *,"pass"
end

 module m01
  integer(kind=1),parameter :: p1=1,p2=2,p3=3,p4=4,p5=5
  integer(kind=1) :: i1=1,i2=2,i3=3,i4=4,i5=5
  contains
   subroutine test01(a) 
    character(int(p1)) ,dimension(p2,p3,p4,p5) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test02(a) 
    character(int(p1)) :: a,b
    dimension:: a(p2,p3,p4,p5) ,b(p2,p3,p4,p5)
    b=a
    b=b
   end subroutine
   subroutine test03(a) 
    dimension :: a(p2,p3,p4,p5) ,b(p2,p3,p4,p5)
    character(int(p1)) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test04(a) 
    character(i1) ,dimension(p2,p3,p4,p5) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test05(a) 
    character(i1) :: a,b
    dimension :: a(p2,p3,p4,p5) ,b(p2,p3,p4,p5)
    b=a
    b=b
   end subroutine
   subroutine test06(a) 
    dimension :: a(p2,p3,p4,p5) ,b(p2,p3,p4,p5)
    character(i1) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test07(a) 
    character(int(p1)) ,dimension(i2,p3,p4,p5) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test08(a) 
    character(int(p1)) :: a,b
    dimension :: a(i2,p3,p4,p5) ,b(i2,p3,p4,p5)
    b=a
    b=b
   end subroutine
   subroutine test09(a) 
    dimension :: a(i2,p3,p4,p5) ,b(i2,p3,p4,p5)
    character(int(p1)) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test10(a) 
    character(int(p1)) ,dimension(p2,p3,p4,i5) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test11(a) 
    character(int(p1)) :: a,b
    dimension :: a(p2,p3,p4,i5) ,b(p2,p3,p4,i5)
    b=a
    b=b
   end subroutine
   subroutine test12(a) 
    dimension :: a(p2,p3,p4,i5) ,b(p2,p3,p4,i5)
    character(int(p1)) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test13(a) 
    character(int(p1)) ,dimension(i2,i3,i4,i5) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test14(a) 
    character(int(p1)) :: a,b
    dimension :: a(i2,i3,i4,i5) ,b(i2,i3,i4,i5)
    b=a
    b=b
   end subroutine
   subroutine test15(a) 
    dimension :: a(i2,i3,i4,i5) ,b(i2,i3,i4,i5)
    character(int(p1)) :: a,b
    b=a
    b=b
   end subroutine
   subroutine test16(a) 
    character(*) ,dimension(p2,p3,p4,p5) :: a,b*(1)
    b=a
    b=b
   end subroutine
   subroutine test17(a) 
    character(*) :: a,b*(1)
    dimension :: a(p2,p3,p4,p5) ,b(p2,p3,p4,p5)
    b=a
    b=b
   end subroutine
   subroutine test18(a) 
    dimension :: a(p2,p3,p4,p5) ,b(p2,p3,p4,p5)
    character(*) :: a,b*(1)
    b=a
    b=b
   end subroutine
   subroutine test19(a) 
    character(int(p1)) ,dimension(p2,p3,p4,*) :: a
    character(int(p1)) ,dimension(p2,p3,p4,p5) :: b
    b=a(p2,p3,p4,p5)
    b=b
   end subroutine
   subroutine test20(a) 
    character(int(p1)) :: a,b
    dimension :: a(p2,p3,p4,*) ,b(p2,p3,p4,p5)
    b=a(p2,p3,p4,p5)
    b=b
   end subroutine
   subroutine test21(a) 
    dimension :: a(p2,p3,p4,*) ,b(p2,p3,p4,p5)
    character(int(p1)) :: a,b
    b=a(p2,p3,p4,p5)
    b=b
   end subroutine
  end

 subroutine sub01()
 use m01
  character(int(p1)) ,dimension(p2,p3,p4,p5) :: aa
  aa='a'
  call test01(aa)
  call test02(aa)
  call test03(aa)
  call test04(aa)
  call test05(aa)
  call test06(aa)
  call test07(aa)
  call test08(aa)
  call test09(aa)
  call test10(aa)
  call test11(aa)
  call test12(aa)
  call test13(aa)
  call test14(aa)
  call test15(aa)
  call test16(aa)
  call test17(aa)
  call test18(aa)
  call test19(aa)
  call test20(aa)
  call test21(aa)
 end
