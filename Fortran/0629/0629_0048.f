       program main
       write(6,*) "main"
       call exit
       stop
       end
       subroutine user_defined_proc(flag,name,ssn)
       integer*4 flag,ssn
       character*(*) name
       write(6,*) flag,name,ssn
       end
