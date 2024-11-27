call test01()
call test02()
print *,'pass'
end

subroutine test01()
!$pragma C(sub4)
external sub3 !$pragma C(sub3)
!$pragma C(sub)
call sub() 
call sub1() !$pragma C(sub1)
call sub2()
!$pragma C(sub2)
call sub3()
call sub4()
end

recursive subroutine sub() !$pragma C(sub)
goto 20
entry sub1() !$pragma C(sub1)
return
entry sub2()
!$pragma C(sub2)
return
!$pragma C(sub3)
entry sub3() 
return !$pragma C(sub4)
entry sub4() 
return
20 call sub2()
call sub1()
call sub3()
call sub4()
end


subroutine test02()
!$pragma STDCALL(sss4)
external sss3 !$pragma STDCALL(sss3)
!$pragma STDCALL(sss)
call sss() 
call sss1() !$pragma STDCALL(sss1)
call sss2()
!$pragma STDCALL(sss2)
call sss3()
call sss4()
end

recursive subroutine sss() !$pragma STDCALL(sss)
goto 20
entry sss1() !$pragma STDCALL(sss1)
return
entry sss2()
!$pragma STDCALL(sss2)
return
!$pragma STDCALL(sss3)
entry sss3() 
return !$pragma STDCALL(sss4)
entry sss4() 
return
20 call sss2()
call sss1()
call sss3()
call sss4()
end

