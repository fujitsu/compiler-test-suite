   subroutine s1
     implicit none
     integer :: iseeda(4) 
     data  iseeda / Z'123', Z'234', Z'345', Z'456' /
     write(1,*) iseeda
  end
   subroutine s2
     implicit none
     integer :: iseeda(4)  / Z'123', Z'234', Z'345', Z'456' /
     write(1,*) iseeda
  end
    call s1
    call s2
rewind 1
read(1,*) k1,k2,k3,k4
if (any((/k1,k2,k3,k4/)/=(/291,564,837,1110/)))print *,101
read(1,*) k1,k2,k3,k4
if (any((/k1,k2,k3,k4/)/=(/291,564,837,1110/)))print *,102
     print *,'pass'
   end 

