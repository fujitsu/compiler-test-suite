INTERFACE GEN
 SUBROUTINE S1 ( PI)
 character(len=:),allocatable :: PI
 END SUBROUTINE S1

END INTERFACE

 character(len=:),allocatable :: i1
 call S1(NULL())
 call S1(NULL(i1))
print*,"pass"
END
 SUBROUTINE S1 ( PI)
 character(len=:),allocatable :: PI
 if(allocated(PI))print*,"101"
 END SUBROUTINE S1
