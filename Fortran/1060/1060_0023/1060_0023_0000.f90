  interface
     subroutine sub(i)
       integer,pointer:: i
     end subroutine sub
     subroutine ent_character_bindc(chc) bind(c)
       character::chc
     end subroutine ent_character_bindc
  end interface

  integer,target:: i
  integer,pointer:: p
  character*10 ch10
  i = 1
  p=>i
  call sub(p)
  call ent_character_bindc(ch10)
  if (i.ne.2) stop '1-1'
  print *, ch10(1:1)//'ASS'

end program
