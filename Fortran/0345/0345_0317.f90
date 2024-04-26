subroutine sub(i)
 call subsub()
 call subsubsub()
contains
 subroutine subsub()
  call subsubsub()
  i=i+10
 end subroutine
 subroutine subsubsub()
  i=i+1
 end subroutine
end subroutine

i=0
call sub(i)
if (i/=12) print *,'error'
print *,'pass'
end
