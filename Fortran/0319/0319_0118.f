       program main
       common /com/p
       integer,pointer::p
       integer,target::t
       interface
       subroutine sub(t)
       integer,target::t
       integer       ::a
       end subroutine sub
       end interface
       t=22
       p=>t
       call sub(t)
       end
       subroutine sub(t)
       integer,target::t
       integer       ::a
       a = (t+1)
       call foo()
       a = a +(t+1)
       print *,a
       end
       subroutine foo()
       common /com/p
       integer,pointer::p
       p=p+1
       end
