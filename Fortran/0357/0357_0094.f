       program main
       interface
         subroutine sub(t)
           integer,target:: t
         end subroutine
       end interface
       common /com/p
       integer,pointer::p
       integer,target::t
       t=22
       p=>t
       call sub(t)
       end
c
       subroutine sub(t)
       integer,target::t
       integer       ::a
       a = (t+1)
       call foo()
       a = a +(t+1)
       print *,a
       end
c
       subroutine foo()
       common /com/p
       integer,pointer::p
       p=p+1
       end
