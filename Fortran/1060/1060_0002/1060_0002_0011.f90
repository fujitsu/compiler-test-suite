subroutine sub_character_value(i)
implicit none
integer i(:,:)
character*(4),value::chv
i = i + 1
return 
entry ent_character_value(chv)
if (chv(1:4).ne.'PASS') then
  stop '1-2'
endif
end
