subroutine sub1_1(i)
external :: i
end subroutine

external :: ifun
pointer :: ifun
call sub1_1(ifun)
10print *,'pass'
end
