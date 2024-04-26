call sub1()
call sub2()
print *,'pass'
contains
subroutine sub1()
save
end subroutine
end
subroutine sub2()
save j
end subroutine
