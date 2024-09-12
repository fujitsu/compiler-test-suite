
integer function gfunc(ff)
  implicit none
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  procedure(gsub),pointer,optional :: ff

  if (present(ff))  call ff

  gfunc = 10
  return
end function gfunc

subroutine gsub
  print *, "gsub"
end subroutine gsub

program main
  implicit none
  interface
     subroutine gsub
     end subroutine gsub

     integer function gfunc(ff)
       interface
          subroutine gsub
          end subroutine gsub
       end interface
       procedure(gsub),pointer,optional :: ff
     end function gfunc
  end interface
  procedure(gsub),pointer :: pp=>gsub
  integer ret
  ret = gfunc(pp)
  print *, ret
  ret = gfunc()
  print *, ret
end program main


