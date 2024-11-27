integer,save :: i[1:*]
call sub() 
print *,'pass'
contains
subroutine sub()
call sub2()
end subroutine
subroutine sub2()
end subroutine
end

