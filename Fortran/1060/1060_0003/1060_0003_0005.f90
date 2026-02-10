subroutine sub_character_bindc(i)
implicit none
integer i(:,:)
character::chc
       character ch3
i = i + 1
return 
entry ent_character_bindc(chc, ch3) bind(c)
chc = 'PASS'
if (len(ch3) .ne. 1) stop 'ch3-1'
if (ch3.ne.'X') then
  print *,ch3
  stop 'ch3-2'
endif
end
