subroutine s1
integer,target::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,pointer,contiguous::p2(:,:)
p2(1:1,1:6)=>t(:,2:3)
if (any([p2]/=[t(:,2:3)])) print *,101
k1=1
p2(1:1,1:6)=>t(:,k1+1:3)
if (any([p2]/=[t(:,2:3)])) print *,102
end
subroutine s2
integer,volatile::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
k1=1
  call test (t(:,2:3)) 
  call test (t(:,k1+1:3)) 
contains
  subroutine test(v)
    integer, asynchronous,contiguous :: v(:,:)
    if (any(v/=t(:,2:3))) print *,103
  end subroutine
end
call s1
call s2
print *,'pass'
end
