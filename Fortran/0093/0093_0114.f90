complex :: cc(2) = (2,3)
call sub(cc(1:2)%re)
contains
subroutine sub(dmy)
   real :: dmy(2)
   if(any(dmy .ne. 2)) print*,"101"
   print*,"pass"
end subroutine
end

