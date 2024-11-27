call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

  subroutine sss(i) !$pragma STDCALL(sss)
  integer*8 i
  j=i
  end subroutine
  subroutine sss1(i) !$pragma STDCALL(sss1)
  integer*1 i
  j=i
  end subroutine
  subroutine sss2(i) !$pragma STDCALL(sss2)
  integer*2 i
  j=i
  end subroutine
  subroutine sss3(i) !$pragma STDCALL(sss3)
  integer*4 i
  j=i
  end subroutine

  subroutine sub(i) !$pragma C(sub)
  integer*8 i
  j=i
  end subroutine
  subroutine sub1(i) !$pragma C(sub1)
  integer*1 i
  j=i
  end subroutine
  subroutine sub2(i) !$pragma C(sub2)
  integer*2 i
  j=i
  end subroutine
  subroutine sub3(i) !$pragma C(sub3)
  integer*4 i
  j=i
  end subroutine

  function   ssss(i) result(j) !$pragma STDCALL(ssss)
  integer*8 i
  j=i
  end function  
  function   ssss1(i) result(j) !$pragma STDCALL(ssss1)
  integer*1 i
  j=i
  end function  
  function   ssss2(i) result(j) !$pragma STDCALL(ssss2)
  integer*2 i
  j=i
  end function  
  function   ssss3(i) result(j) !$pragma STDCALL(ssss3)
  integer*4 i
  j=i
  end function  

  function   ssub(i) result(j) !$pragma C(ssub)
  integer*8 i
  j=i
  end function  
  function   ssub1(i) result(j) !$pragma C(ssub1)
  integer*1 i
  j=i
  end function  
  function   ssub2(i) result(j) !$pragma C(ssub2)
  integer*2 i
  j=i
  end function  
  function   ssub3(i) result(j) !$pragma C(ssub3)
  integer*4 i
  j=i
  end function  

subroutine test01()
interface aaa !$pragma C(sub)
  subroutine sub(i) 
  integer*8 i
  end subroutine
  subroutine sub1(i) !$pragma C(sub1)
  integer*1 i
  !$pragma C(sub2)
  end subroutine
  subroutine sub2(i) 
  integer*2 i
  end subroutine
  subroutine sub3(i)
  integer*4 i
  end subroutine
end interface 

call aaa(1_8)
call sub1(1_1)
call sub2(1_2)
!$pragma C(sub3)
call sub3(1_4)
end 

subroutine test02()
interface aaa !$pragma STDCALL(sss)
  subroutine sss(i) 
  integer*8 i
  end subroutine
  subroutine sss1(i) !$pragma STDCALL(sss1)
  integer*1 i
  !$pragma STDCALL(sss2)
  end subroutine
  subroutine sss2(i) 
  integer*2 i
  end subroutine
  subroutine sss3(i)
  integer*4 i
  end subroutine
end interface 

call aaa(1_8)
call sss1(1_1)
call sss2(1_2)
!$pragma STDCALL(sss3)
call sss3(1_4)
end 

subroutine test03()
interface aaa !$pragma C(ssub)
  function   ssub(i) result(j) 
  integer*8 i
  end function  
  function   ssub1(i) result(j) !$pragma C(ssub1)
  integer*1 i
  !$pragma C(ssub2)
  end function  
  function   ssub2(i)  result(j)
  integer*2 i
  end function  
  function   ssub3(i) result(j)
  integer*4 i
  end function  
end interface 

call= aaa(1_8)
call= ssub1(1_1)
call= ssub2(1_2)
!$pragma C(ssub3)
call= ssub3(1_4)
end 

subroutine test04()
interface aaa !$pragma STDCALL(ssss)
  function   ssss(i) result(j)
  integer*8 i
  end function  
  function   ssss1(i) result(j) !$pragma STDCALL(ssss1)
  integer*1 i
  !$pragma STDCALL(ssss2)
  end function  
  function   ssss2(i) result(j)
  integer*2 i
  end function  
  function   ssss3(i) result(j)
  integer*4 i
  end function  
end interface 

call= aaa(1_8)
call= ssss1(1_1)
call= ssss2(1_2)
!$pragma STDCALL(ssss3)
call= ssss3(1_4)
end 

