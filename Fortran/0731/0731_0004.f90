 call test01()
 call test02()
 call test03()
 call test04()
 call test05()
 call test06()
 print *,'pass'
 end

  subroutine sub1(i1,i2,i3,i4,i5) !$pragma STDCALL(sub1)
  integer,optional :: i1,i2,i3,i4,i5
  end subroutine

 subroutine test01()
 !$pragma STDCALL(sub1)
 interface 
  subroutine sub1(i1,i2,i3,i4,i5)
  integer,optional :: i1,i2,i3,i4,i5
  end subroutine
 end interface
 call sub1()
 call sub1() 
 contains
 subroutine sss()
 call sub1() 
 end subroutine
 end subroutine

 subroutine test02()
 !$pragma STDCALL(sub1)
 interface 
  subroutine sub1(i1,i2,i3,i4,i5)
  integer,optional :: i1,i2,i3,i4,i5
  end subroutine
 end interface
 call sub1()
 contains
 subroutine sss()
 call sub1(1) 
 call sub1() 
 end subroutine
 end subroutine

 subroutine test03()
 !$pragma STDCALL(sub1)
 interface 
  subroutine sub1(i1,i2,i3,i4,i5)
  integer,optional :: i1,i2,i3,i4,i5
  end subroutine
 end interface
 call sub1()
 contains
 subroutine sss()
 call sub1(1) 
 call sub1(1) 
 call sub1(1) 
 call sub1(1) 
 call sub1(1) 
 call sub1(1,2) 
 end subroutine
 end subroutine

 subroutine test04()
 !$pragma STDCALL(sub1)
 interface 
  subroutine sub1(i1,i2,i3,i4,i5)
  integer,optional :: i1,i2,i3,i4,i5
  end subroutine
 end interface
 call sub1(1,2,3) 
 call sub1()
 call sub1(1) 
 call sub1(1,2,3) 
 contains
 subroutine sss()
 call sub1(1) 
 call sub1(1,2) 
 call sub1(1,2,3) 
 end subroutine
 end subroutine

 subroutine test05()
 !$pragma STDCALL(sub1)
 interface 
  subroutine sub1(i1,i2,i3,i4,i5)
  integer,optional :: i1,i2,i3,i4,i5
  end subroutine
 end interface
 call sub1(1,2,3,4) 
 call sub1()
 call sub1(1) 
 call sub1(1,2) 
 contains
 subroutine sss()
 call sub1(1,2,3) 
 call sub1(1) 
 end subroutine
 end subroutine

 subroutine test06()
 !$pragma STDCALL(sub1)
 interface 
  subroutine sub1(i1,i2,i3,i4,i5)
  integer,optional :: i1,i2,i3,i4,i5
  end subroutine
 end interface
 call sub1(1,2,3,4) 
 call sub1()
 call sub1(1,2,3,4,5) 
 call sub1(1,2,3,4,5) 
 contains
 subroutine sss()
 call sub1(1) 
 call sub1()
 call sub1(1,2) 
 call sub1(1,2,3) 
 call sub1(1) 
 end subroutine
 end subroutine
