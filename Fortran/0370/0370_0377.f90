
module mod
  interface
     subroutine gsub
     end subroutine gsub
     subroutine gsub2
     end subroutine gsub2
     subroutine gsub3
     end subroutine gsub3
  end interface
  procedure(gsub),pointer :: xx => gsub
  procedure(gsub3),pointer :: yy => gsub3

contains
  subroutine xyz
    block
      procedure(gsub2),pointer :: xx => gsub2
      call xx
      call yy
    end block
    call xx
  end subroutine xyz
end module mod

subroutine gsub
  print *, "gsub"
end subroutine gsub

subroutine gsub2
  print *, "gsub2"
end subroutine gsub2

subroutine gsub3
  print *, "gsub3"
end subroutine gsub3

program main
  use mod
  call xx
  call yy
  call xyz
end program main
