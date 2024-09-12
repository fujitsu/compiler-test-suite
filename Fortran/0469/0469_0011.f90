integer,target :: trg
trg = 2
call sub(trg)

if ( trg == 2 ) then 
  print *,'pass'
else
  print *,'ng'
end if 

contains
subroutine sub(dptr)
integer,pointer,intent(in) :: dptr
end subroutine
end
