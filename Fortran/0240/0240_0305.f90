call test()
print *,'pass'
end
subroutine test()
integer a(8) ,b(1,3),c(2,2,2)
a(2:8:2)=(/1,2,3,4/)
b(1,3:1:-1)=(/1,2,3/)
c(:,:,:)=1
if (a(2).ne.1)print *,'err'
if (a(4).ne.2)print *,'err'
if (a(6).ne.3)print *,'err'
if (a(8).ne.4)print *,'err'
if (b(1,1).ne.3)print *,'err'
if (b(1,2).ne.2)print *,'err'
if (b(1,3).ne.1)print *,'err'
if (c(1,1,2).ne.1)print *,'err'
end
