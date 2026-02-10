subroutine sub_character_bindc(i)
implicit none
integer i(:,:)
character::chc
i = i + 1
return 
entry ent_character_bindc(chc) bind(c)
chc = 'PASS'
end
