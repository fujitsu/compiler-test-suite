program main
integer,target :: i(10),f
integer,pointer :: res(:)

i = [1,2,3,4,5,6,7,8,9,0]
associate (a=>i(3:))
 res => a
do f=1,8
if(f/=8 .and. res(f)/=f+2) print*,'fail1',f
if(f==8 .and. res(f)/=0) print*,'fail1',f
end do
 a=2
end associate

do f=1,8
if(res(f)/=2) print*,'fail2',f
end do

print*,'pass'
end program
