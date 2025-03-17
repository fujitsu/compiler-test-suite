call sub()
end
subroutine sub()
call sub1(1)
end subroutine
subroutine sub1()
if (.false.) print *,'fail'
end subroutine
