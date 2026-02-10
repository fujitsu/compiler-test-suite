subroutine sub_character_a(i)
integer i(:,:)
character(*) ch
       character*(*) ch3
i = i + 1
return 
entry ent_character_a(ch, ch3)
ch = 'PASS'
if (len(ch).ne.10) stop '1-2'
if (len(ch3) .ne. 3) stop 'ch3-1'
end
