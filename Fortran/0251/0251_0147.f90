integer :: act=22
call s1(act)

contains
subroutine s1(n)
integer,intent(inout) :: n

if(n/=22) print*,101
n=n+1
block
character(len=n)  :: ii(n)
if(n/=23) print*,102
if(len(ii)/=23) print*,103
if(size(ii)/=23) print*,104
n=n+1
block
character(len=n)  :: kk(n)
if(n/=24) print*,105
if(len(kk)/=24) print*,106,len(kk),n
if(size(kk)/=24) print*,107,size(kk),n
end block
end block
print*,'pass'
end subroutine

end
