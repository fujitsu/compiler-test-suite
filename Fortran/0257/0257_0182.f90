interface
subroutine sub(a,b)
integer::a(3,3)
integer::b
end subroutine
end interface
integer,target:: trg(3,3)= reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,pointer:: ptr(:,:)
integer::k
k=1
ptr=>trg(:,:)
call sub(ptr(:,:),k)
if(any(trg.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"104"
print*,"pass"
end
subroutine sub(a,b)
integer::a(3,3)
integer::b
a = a + 10
b = b +1
end subroutine
