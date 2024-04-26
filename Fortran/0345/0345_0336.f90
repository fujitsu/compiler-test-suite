module mod
 contains
 subroutine sub
   print *,'pass 1'
 end subroutine
end module

subroutine sub
   print *,'pass 2'
end subroutine

subroutine s1
 use mod
 call sub
end subroutine

subroutine s2
 call sub
end subroutine

call s1
call s2
call pr
end

subroutine pr
  print *,'pass'
end subroutine
