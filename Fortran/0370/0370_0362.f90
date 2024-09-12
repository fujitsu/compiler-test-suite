
integer function gfunc()
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  procedure(gsub),pointer,save :: gg =>gsub

  call gg
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

     integer function gfunc()
     end function gfunc
  end interface
  procedure(gsub),pointer,save :: pp=>gsub
  integer ret
  call pp
  ret = gfunc()
  print *, ret
end program main


