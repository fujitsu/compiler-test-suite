call test01()
print *,'pass'
end

subroutine test01()
!$pragma C(ifun)
i=ifun()
!$pragma C(ifun1)
i=ifun1()
!$pragma C(ifun2)
i=ifun2()
!$pragma C(ifun4)
i=ifun3()
!$pragma C(ifun3)
i=ifun4()
i=ifun5()
i=ifun6()
i=ifun7()
!$pragma C(ifun5)
!$pragma C(ifun6)
!$pragma C(ifun7)
!$pragma C(ifun8)
i=ifun8()
end subroutine

integer*4 function ifun() !$pragma C(ifun)
ifun=1
end function

integer*4 function ifun1() 
ifun1=1
!$pragma C(ifun1)
end function 

!$pragma C(ifun2)
integer*4 function ifun2() 
ifun2=1
end function 

integer*4 function ifun3() 
!$pragma C(ifun3)
ifun3=1
end function 

integer*4 recursive function ifun4() 
!$pragma C(ifun4)
ifun4=1
end function 

!$pragma C(ifun5)
integer*4 recursive function ifun5() 
ifun5=1
end function 

!$pragma C(ifun6)
recursive function ifun6() result(ia) 
ia=1
end function 

!$pragma C(ifun7)
function ifun7() result(ia) 
ia=1
end function 

!$pragma C(ifun8)
function ifuna() result(ia) 
entry ifun8()
ia=1
end function 
