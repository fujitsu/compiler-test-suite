subroutine s1
real,parameter:: a(2,2,2)=reshape([2,6,7,8,9,9,2,6],[2,2,2])
integer :: res(2,2)=findloc(a,6,dim=1,back=.true.)
if(res(1,1)/=2) print *,101
if(res(1,2)/=0) print *,103
if(res(2,1)/=0) print *,104
if(res(2,2)/=2) print *,105
end
call s1
print *,'pass'
end

