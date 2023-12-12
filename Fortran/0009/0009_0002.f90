module m1
 real:: value  ! 2)
end

module m2
 use m1        ! 3)
contains
 subroutine def
  value = 2    ! 4)
  call ref
end subroutine
end

use m2,only: def ! 5) , 6)
call def
print *,'OK'
end

subroutine ref    ! 7)
 use m1           ! 8)
 write(1,*) value ! 9)
end 

