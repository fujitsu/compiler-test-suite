subroutine sub_character_value(i)
implicit none
integer i(:,:)
character*(4),value::chv
       character*(*) ch3
i = i + 1
return 
entry ent_character_value(chv, ch3)
if (chv(1:4).ne.'PASS') then
  stop '1-2'
endif
if (len(ch3) .ne. 3) stop 'ch3-1'
if (ch3.ne.'XYZ') stop 'ch3-2'
end
