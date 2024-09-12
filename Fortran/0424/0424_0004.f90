module m
  integer :: i=0
end

program main
  use m
  procedure(),pointer :: prc
  interface gnr
    subroutine ext3()
    end subroutine
  end interface
  external ext2
  call sub
  if (i/=13) print *,i
  print *,'pass'
contains
  subroutine sub
    prc=>ext2
    call ext
    call prc
    call gnr
  end subroutine
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
