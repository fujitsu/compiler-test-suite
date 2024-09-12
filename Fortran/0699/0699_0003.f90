call test01()
call test02()
call test03()
call test04()
call test05()
print *,'pass'
end

  subroutine isub(i)
!$pragma C(isub)
   integer*1 i
   j=i
  end subroutine
  subroutine isub1(i)
   integer*2 i
   j=i
  !$pragma C(isub1)
  end subroutine 
!$pragma C(isub2)
  subroutine isub2(i)
   integer*4 i
   j=i
  end subroutine
  subroutine isub3(i)
   logical*4 i,j
!$pragma C(isub3)
   j=i
  end subroutine

subroutine test01()
 interface isub
  subroutine isub(i)
!$pragma C(isub)
   integer*1 i
  end subroutine
  subroutine isub1(i)
   integer*2 i
  !$pragma C(isub1)
  end subroutine 
!$pragma C(isub2)
  subroutine isub2(i)
   integer*4 i
  end subroutine
  subroutine isub3(i)
   logical*4 i
!$pragma C(isub3)
  end subroutine
 end interface
call isub(1_1)
call isub1(1_2)
call isub(1_4)
call isub(.true.)
end subroutine


  recursive subroutine jsub(i)
!$pragma C(jsub)
   integer*1 i
   j=i
  end subroutine
  recursive subroutine jsub1(i)
   integer*2 i
   j=i
  !$pragma C(jsub1)
  end subroutine 
!$pragma C(jsub2)
  recursive subroutine jsub2(i)
   integer*4 i
   j=i
  end subroutine
  recursive subroutine jsub3(i)
   logical*4 i,j
!$pragma C(jsub3)
   j=i
  end subroutine

subroutine test02()
 interface jsub
  recursive subroutine jsub(i)
!$pragma C(jsub)
   integer*1 i
  end subroutine
  recursive subroutine jsub1(i)
   integer*2 i
  !$pragma C(jsub1)
  end subroutine 
!$pragma C(jsub2)
  recursive subroutine jsub2(i)
   integer*4 i
  end subroutine
  recursive subroutine jsub3(i)
   logical*4 i
!$pragma C(jsub3)
  end subroutine
 end interface
call jsub(1_1)
call jsub1(1_2)
call jsub(1_4)
call jsub(.true.)
end subroutine


  recursive function   jfun(i)
!$pragma C(jfun)
   integer*1 i
   j=i
   jfun =1
  end function  
  recursive function   jfun1(i)
   integer*2 i
   j=i
   jfun1 =1
  !$pragma C(jfun1)
  end function 
!$pragma C(jfun2)
  recursive function   jfun2(i)
   integer*4 i
   j=i
   jfun2 =1
  end function  
  recursive function   jfun3(i)
   logical*4 i,j
!$pragma C(jfun3)
   j=i
   jfun3 =1
  end function  

subroutine test03()
 interface jfun
  recursive function   jfun(i)
!$pragma C(jfun)
   integer*1 i
  end function  
  recursive function   jfun1(i)
   integer*2 i
  !$pragma C(jfun1)
  end function  
!$pragma C(jfun2)
  recursive function   jfun2(i)
   integer*4 i
  end function  
  recursive function   jfun3(i)
   logical*4 i
!$pragma C(jfun3)
  end function  
 end interface
call= jfun(1_1)
call= jfun1(1_2)
call= jfun(1_4)
call= jfun(.true.)
end subroutine


  recursive function   ifun(i) result(if)
!$pragma C(ifun)
   integer*1 i
   j=i
   if =1
  end function  
  recursive function   ifun1(i) result(if)
   integer*2 i
   j=i
   if =1
   !$pragma C(ifun1)
  end function 
!$pragma C(ifun2)
  recursive function   ifun2(i) result(if)
   integer*4 i
   j=i
   if =1
  end function  
  recursive function   ifun3(i) result(if)
   logical*4 i,j
!$pragma C(ifun3)
   j=i
   if =1
  end function  

subroutine test04()
 interface ifun
  recursive function   ifun(i) result(if)
!$pragma C(ifun)
   integer*1 i
  end function  
  recursive function   ifun1(i) result(if)
   integer*2 i
  !$pragma C(ifun1)
  end function 
!$pragma C(ifun2)
  recursive function   ifun2(i) result(if)
   integer*4 i
  end function  
  recursive function   ifun3(i) result(if)
   logical*4 i
!$pragma C(ifun3)
  end function  
 end interface
call= ifun(1_1)
call= ifun1(1_2)
call= ifun(1_4)
call= ifun(.true.)
end subroutine


  function   kfun(i) result(if)
!$pragma C(kfun)
   integer*1 i
   j=i
   if =1
  end function  
  function   kfun1(i) result(if)
   integer*2 i
   j=i
   if =1
    !$pragma C(kfun1)
  end function 
!$pragma C(kfun2)
  function   kfun2(i) result(if)
   integer*4 i
   j=i
   if =1
  end function  
  function   kfun3(i) result(if)
   logical*4 i,j
!$pragma C(kfun3)
   j=i
   if =1
  end function  

subroutine test05()
 interface kfun
  function   kfun(i) result(if)
!$pragma C(kfun)
   integer*1 i
  end function  
  function   kfun1(i) result(if)
   integer*2 i
  !$pragma C(kfun1)
  end function 
!$pragma C(kfun2)
  function   kfun2(i) result(if)
   integer*4 i
  end function  
  function   kfun3(i) result(if)
   logical*4 i
!$pragma C(kfun3)
  end function  
 end interface
call= kfun(1_1)
call= kfun1(1_2)
call= kfun(1_4)
call= kfun(.true.)
end subroutine

