
program main
  interface
     subroutine gsub1
     end subroutine gsub1
     subroutine gsub2
     end subroutine gsub2
  end interface
  type ty1
     integer(kind=1)::s1 = 1
     procedure(),pointer,nopass :: pg1 => gsub1
     integer(kind=1)::s2 = 2
     procedure(),pointer,nopass :: pg2 => gsub2
     integer(kind=1)::s3 = 3
  end type ty1
  type (ty1) :: str
  
  call str%pg1
  call str%pg2
  print *, str%s1, str%s2, str%s3
end program main

subroutine gsub1
  print *, "gsub1"
end subroutine gsub1

subroutine gsub2
  print *, "gsub2"
end subroutine gsub2

