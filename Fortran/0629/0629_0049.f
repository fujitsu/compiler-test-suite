      program main
       write(6,*) "main"
       call sub1()
       stop
       end
       subroutine sub1()
       write(6,*) "sub1"
       stop
       end
       subroutine user_defined_proc(flag,name,ssn)
       integer*4 flag,ssn
       character*(*) name
       write(6,*) flag,name,ssn
       end
