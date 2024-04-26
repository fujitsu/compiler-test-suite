subroutine s
integer:: a1(2,3),b1(3)=[1,2,0]
integer::c(2,3)=reshape([1,2,3,4,5,6],[2,3])
integer::d(2,3)=reshape([5,6,1,2,3,4],[2,3])
a1(:,b1+1)=c
if (any(a1/=d))print *,101,a1,d
end
call s
print *,'pass'
end
