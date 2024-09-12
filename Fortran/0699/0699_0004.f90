 interface
  subroutine test01(i)
  end subroutine
  subroutine test02(i)
  end subroutine
  subroutine test03(i)
  end subroutine
  function   test04(i)
  end function  
  function   test05(i)
  end function  
  function   test06(i)
  end function  
 end interface
 call test01(1)
 call test02(1)
 call test03(1)
 call = test04(1)
 call = test05(1)
 call = test06(1)
 print *,'pass'
 end

  subroutine sub1(i)
  k=i
  end subroutine
  subroutine sub2(i,j)
  k=i
  k=j
  end subroutine

 subroutine test01(i)
 interface sss
  subroutine sub1(i)
  end subroutine
  subroutine sub2(i,j)
  end subroutine
 end interface
 j=i
 call sub1(1)
 call sss(2)
 call sub2(1,2)
 end subroutine

 
  subroutine sub3(i,j)
  integer,intent(inout) :: i
  character,intent(in)  :: j
  character k
  ii=i
  k=j
  end subroutine

 subroutine test02(i)
 interface assignment(=)
  subroutine sub3(i,j)
  integer,intent(inout) :: i
  character,intent(in)  :: j
  end subroutine
 end interface
 j=i
 j='a'
 end subroutine

 

 recursive subroutine test03(i)
 return
 entry s_ent1(i)
 entry s_ent2(i,j)
 entry s_ent3(i,j,k)
 ii=i
 jj=j
 kk=k
 call s_ent1(1)
 call s_ent2(1,1)
 call s_ent3(1,1,1)
 call test03(1)
 end subroutine

 

  function   fun1(i)
  k=i
  fun1=1
  end function  
  function   fun2(i,j)
  k=i
  k=j
  fun2=1
  end function  

 function   test04(i)
 interface sss
  function   fun1(i)
  end function  
  function   fun2(i,j)
  end function  
 end interface
 j=i
 test04=1
 call = fun1(1)
 call = sss(2)
 call = fun2(1,2)
 end function  

 
  function   fun3(i,j)
  integer,intent(in) :: i
  character,intent(in)  :: j
  character k
  ii=i
  k=j
  fun3=1
  end function  

 function   test05(i)
 interface operator(.aa.)
  function   fun3(i,j)
  integer,intent(in) :: i
  character,intent(in)  :: j
  end function  
 end interface
 test05=1.aa.'a' 
 end function  

 

 recursive function   test06(i) result(tia)
 tia=1 
 return
 entry f_ent1(i) result(ia)
 entry f_ent2(i,j) result(ia)
 entry f_ent3(i,j,k) result(ia)
 ii=i
 jj=j
 kk=k
 call = f_ent1(1)
 call = f_ent2(1,1)
 call = f_ent3(1,1,1)
 call = test06(1)
 end function  

 
