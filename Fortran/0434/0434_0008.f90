integer,target::ttt(1,1,1,1,1,1,1)
ttt=-1
call sss([ttt])
print *,'pass'
contains
  subroutine sss(ttt)
integer,pointer::ppp(:)
integer,target::ttt(:)
allocate(ppp(1))
ppp=>ttt(:)
if(size(ttt)/=1) print *,'err'
end subroutine sss
end
