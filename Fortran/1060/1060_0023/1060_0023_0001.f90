subroutine sub(i)
implicit none
integer,pointer:: i
character::chc
i = i + 1
return 
entry ent_character_bindc(chc) bind(c)
chc = 'PASS'
end subroutine sub
