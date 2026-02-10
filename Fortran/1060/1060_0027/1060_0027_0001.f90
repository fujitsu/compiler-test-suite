subroutine sub(ch)
implicit none
character*(*) ch
integer i
save
entry    ent(i, ch)
if (len(ch) .ne. 3 ) stop '1-1'
if (ch .eq. 'XYZ') then
  if (i .ne. 1 ) stop '1-2'
endif
 return 
end subroutine
