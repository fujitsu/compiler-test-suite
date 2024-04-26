module mod0
 contains
 subroutine sub
   print *,'pass 0'
 end subroutine
end module

module mod1
 contains
 subroutine sub
   print *,'pass 1'
 end subroutine
end module

module mod2
 contains
 subroutine sub
   print *,'pass 2'
 end subroutine
end module

module mod3
 contains
 subroutine sub
   print *,'pass 3'
 end subroutine
end module

subroutine sub
   print *,'pass 4'
end subroutine

subroutine s0
 use mod0
 call sub
end subroutine

subroutine s1
 use mod1
 call sub
end subroutine

subroutine s2
 use mod2
 call sub
end subroutine

subroutine s3
 use mod3
 call sub
end subroutine

subroutine s4
 call sub
end subroutine

call s0
call s1
call s2
call s3
call s4
call pr
end

subroutine pr
  print *,'pass'
end subroutine
