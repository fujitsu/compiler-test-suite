integer :: ii=23

block
integer :: ii=12
call ss(ii)
if(ii/=12) print*,103,ii
end block
if(ii/=23) print*,101
print*,'pass'

contains
subroutine ss(dd)
integer,value :: dd
dd=dd+1
if(dd/=13) print*,102
end subroutine
end
