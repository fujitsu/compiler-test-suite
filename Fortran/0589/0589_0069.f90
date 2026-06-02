interface
       FUNCTION f1 ( tar ) 
       integer, target,intent(in)::tar
       integer, pointer :: f1
       end function

       function f2 (ctar ) 
       integer, target,intent(in) :: ctar 
       integer, pointer::f2
       end function

       function f3 (rtar ) 
       integer, target,intent(in)::rtar
       integer, pointer::f3
       end function
end interface 

integer, target::trg=1000
integer, target::ctrg=2000
integer,target::rtrg=3000
f1(trg)=4000
if(trg /=4000) print *,101
f2(ctrg)=10
if(ctrg /=10) print *,102
f3(rtrg)=20
if(rtrg /=20) print *,103
print *,"Pass"
end

       FUNCTION f1 ( tar ) 
       integer, target,intent(in)::tar
       integer, pointer :: f1
       integer, target,intent(in) :: ctar 
       integer, pointer::f2
       integer, target,intent(in)::rtar
       integer, pointer::f3
       f1=>tar
       return

       entry f2 (ctar ) 
       f2=>ctar
       return

       entry f3 (rtar ) 
       f3=>rtar
       end function

