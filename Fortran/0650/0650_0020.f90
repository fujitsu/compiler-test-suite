call sub01()
print *,'pass'
end      
subroutine sub01()
call sub()
contains
subroutine sub()
call sss1()
end subroutine
subroutine sss1()
call sss2()
end subroutine 
subroutine sss2()
call sss3()
end subroutine 
subroutine sss3()
call sss4()
end subroutine 
subroutine sss4()
end subroutine 
end subroutine 
