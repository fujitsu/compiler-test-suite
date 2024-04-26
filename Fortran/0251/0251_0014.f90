implicit none
integer,pointer :: pv
integer,target :: tgt

tgt=2
block
volatile :: pv
pv=>tgt
end block

if(pv==2) print*,'pass'
end
