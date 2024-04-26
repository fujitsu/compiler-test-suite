subroutine s1()
character(2),target ::t(3,3,3)=reshape(['11','22','33','44','55','66','77','88','99','11','22','33','44','55','66','77','88','99','11','22','33','44','55','66','77','88','99'],[3,3,3])
integer::k =2
integer::l =2
call ss(t(1:3:k,1:3:k,1:3:k))
call ss(t(1:3:k,1::k,::k)(:))
call ss(t(1:3:k,1:3:k,1:3:k)(:l))
call ss(t(1:3:k,1:3:k,1:3:2)(1:l))
call ss(t(1:3:2,1:3:k,1:3:k)(k:l))
call ss(t(:,:,1:3:k)(k:2))
call ss(t(1:3:k,1:3:k,1:3:k)(1:l))
call ss(t(1:3:2,:,:)(k:2))
call ss(t(:,1:3:2,:)(k:l))
call ss(t(1:3:2,:,:)(:))
call ss(t(1:3:2,1:3:2,1:3:2)(:l))
call ss2(t(1:3:k,1:3:k,1:3:k))
call ss2(t(1:3:k,1::k,::k)(:))
call ss2(t(1:3:k,1:3:k,1:3:k)(:l))
call ss2(t(1:3:k,1:3:k,1:3:2)(1:l))
call ss2(t(1:3:1,1:3:k,1:3:k)(k:l))
call ss2(t(1:3:k,1:3:2,1:3:k)(k:2))
call ss2(t(1:3:k,1:3:k,1:3:k)(1:l))
call ss2(t(1:3:2,1:3:2,k-1:k+1:k)(k:2))
call ss2(t(l-1:l+1:k,1:3:2,1:3:1)(k:l))
call ss2(t(1:3:2,1:3:k,1:3:l)(:))
call ss2(t(1:3:2,1:3:2,1:3:2)(:l))
contains
subroutine ss(a)
character(len=2)::a(2,2,2)
if(any(lbound(a).ne.1))print*,"101"
if(len(a).ne.2)print*,"103", len(a)
if(loc(t).eq.loc(a))print*,"104"
end subroutine
subroutine ss2(a)
character(len=3)::a(2,2,2)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.2))print*,"102", ubound(a)
if(len(a).ne.3)print*,"103", len(a)
if(loc(t).eq.loc(a))print*,"104"
end subroutine
end subroutine
call s1()
print *,'pass'
end

