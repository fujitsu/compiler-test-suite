program main
integer,target :: i(10),f
integer,pointer :: res(:)

i = [1,2,3,4,5,6,7,8,9,10]
associate (a=>i(:10))
 res => a
do f=1,7
if(res(f)/=f) print*,'fail1',f
end do
 a =2
 a(8) = 8
 a(9) = 9
 a(10) = 10

end associate

if(size(res)/=10) print*,'FAIL'

do f=1,10
if(f.le.7 .and. res(f)/=2) print*,'fail2',f
if(f.ge.8 .and. res(f)/=f) print*,'fail2',f
end do

print*,'pass'
end program
