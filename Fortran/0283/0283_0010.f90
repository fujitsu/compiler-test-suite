program main

character(kind=4)::act=4_'a'
call sub(act)
if(act == 4_'b') print*,'pass'

contains
subroutine sub(ch)
character(kind=4)::ch
if(ch==4_'a') then
 associate(a=>ch)
  a=4_'b'
 end associate
else
 print*,'fail'
endif
end subroutine
end
