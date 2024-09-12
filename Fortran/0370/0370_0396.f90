
program main
  interface
     subroutine gsub
     end subroutine gsub
     subroutine gsub2
     end subroutine gsub2
     subroutine gsub3
     end subroutine gsub3
  end interface
  type tp
     procedure(gsub),pointer,nopass :: xx => gsub
     procedure(gsub3),pointer,nopass :: yy => gsub3
  end type tp
  type(tp)::str
  type(tp)::str2

  block
    type tp
       procedure(gsub2),pointer,nopass :: xx => gsub2
    end type tp
    type(tp)::str
    call str%xx
    call str2%xx
    call str2%yy
  end block

  call str%xx

end program main

subroutine gsub
  print *, "gsub"
end subroutine gsub

subroutine gsub2
  print *, "gsub2"
end subroutine gsub2

subroutine gsub3
  print *, "gsub3"
end subroutine gsub3
