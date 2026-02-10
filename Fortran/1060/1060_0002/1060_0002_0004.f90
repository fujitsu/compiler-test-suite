subroutine sub_character_a(i)
integer i(:,:)
character(*) ch
i = i + 1
return 
entry ent_character_a(ch)
ch = 'PASS'
if (len(ch).ne.10) stop '1-2'
end
