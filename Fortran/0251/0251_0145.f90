integer :: act=22
call s1(act)

contains
subroutine s1(n)
integer,intent(inout) :: n

if(n/=22) print*,101
n=n+1
block
integer  :: ii(n)
integer :: j=1
if(j==1) then
if(n/=23) print*,102
if(size(ii)==23) print*,'pass'
end if
end block

print*,'finish',n
end subroutine

end
