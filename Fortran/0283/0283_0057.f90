program main
integer :: i(10)
integer :: res(5)

i = [1,2,3,4,5,6,7,8,9,0]

associate (a=>i(::2))
 res = a(5:1:-1)
end associate

if(res(1)==9 .and. res(3)==5 .and. res(5)==1) print*,'pass'
end program
