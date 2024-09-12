module m
  integer :: i=0
contains
  subroutine sub
    procedure(),pointer :: prc
    interface gnr
      subroutine ext3()
      end subroutine
    end interface
    external ext2
    prc=>ext2
    call ext
    call prc
    call gnr
    call internal
  contains
    subroutine internal
      i=i+2
    end subroutine
  end subroutine
end

use m
call sub
if (i/=15) print *,i
print *,'pass'
end

subroutine ext
  use m
  i=i+1
end

subroutine ext2
  use m
  i=i+4
end 

subroutine ext3
  use m
  i=i+8
end 
