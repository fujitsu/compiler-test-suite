program main
integer::i=0

call sub(i)
if(i/=5) then
 print*,'fail'
else
 print*,'pass'
end if

contains
subroutine sub(dmy)
 integer::dmy
 associate(a=>dmy)
  dmy=5
 end associate
end subroutine
end
