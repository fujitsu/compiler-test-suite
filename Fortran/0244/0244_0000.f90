integer::i=1
integer,target :: trg(10)

trg=2
trg(2:6) = 3

call ss(trg(2:6:i),trg(2:6:i),trg(2:6:i),trg(2:6:i),trg(2:6:i),trg(2:6:i))

contains
subroutine ss(aptr1,aptr2,aptr3,aptr4,aptr5,aptr6)
integer,contiguous::aptr1(:),aptr2(:),aptr3(:),aptr4(:),aptr5(:),aptr6(:)

call sub(aptr1,aptr2(:),aptr3(2:),aptr4(::2),aptr5,aptr6([2,3,4]))
end subroutine

subroutine sub(dptr1,dptr2,dptr3,dptr4,dptr5,dptr6)
integer::dptr1(5),dptr2(5),dptr3(5),dptr4(5),dptr5(5),dptr6(3)
if(all(dptr1==3)) print*,'pass'
if(all(dptr2/=3)) print*,101
if(all(dptr3/=3)) print*,102
if(all(dptr4/=3)) print*,103
if(all(dptr5/=3)) print*,104
if(all(dptr6/=3)) print*,105
end subroutine
end
