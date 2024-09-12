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
  prc=>ext2
  call ext
  call prc
  call gnr
  call internal
  if (i/=15) print *,i
  print *,'pass'
contains
  subroutine internal
    i=i+2
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
