subroutine sub_character10(i)
implicit none
integer i(:,:)
character(10) ch10
       character*(*) ch3
i = i + 1
return 
entry ent_character10(ch10, ch3)
ch10 = 'PASS'
if (len(ch3) .ne. 3) then
  print *,"NG",len(ch3)
  stop 'ch3-1'
endif
if (ch3.ne.'XYZ') stop 'ch3-2'
end
