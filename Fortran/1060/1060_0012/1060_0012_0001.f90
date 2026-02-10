subroutine sub(i)
implicit none
integer i
character(10) ch10
i = i + 1
return 
entry ent_character10(ch10)
ch10 = 'PASS'
end subroutine sub
