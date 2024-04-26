module mod0
 contains
 subroutine sub
   print *,'error'
 entry ent
   print *,'pass 0'
 end subroutine
end module

module mod1
 contains
 subroutine sub
   print *,'error'
 entry ent
   print *,'pass 1'
 end subroutine
end module

module mod2
 contains
 subroutine sub
   print *,'error'
 entry ent
   print *,'pass 2'
 end subroutine
end module

module mod3
 contains
 subroutine sub
   print *,'error'
 entry ent
   print *,'pass 3'
 end subroutine
end module

subroutine sub
   print *,'error'
 entry ent
   print *,'pass 4'
end subroutine

subroutine s0
 use mod0
  print *,'error'
entry e0
  call ent
end subroutine

subroutine s1
 use mod1
  print *,'error'
entry e1
  call ent
end subroutine

subroutine s2
 use mod2
  print *,'error'
entry e2
  call ent
end subroutine

subroutine s3
 use mod3
  print *,'error'
entry e3
  call ent
end subroutine

subroutine s4
  print *,'error'
entry e4
  call ent
end subroutine

program main
call e0
call e1
call e2
call e3
call e4
call pr
end

subroutine pr
  print *,'pass'
end subroutine
