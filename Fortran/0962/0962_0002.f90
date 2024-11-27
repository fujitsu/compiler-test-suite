integer,pointer :: p_arr(:,:)
integer,target :: arr(5,10),arr2(4,6)
integer :: v(3)

do i = 1,5
 do j = 1,10
   arr(i,j) = i+j
 end do
end do

do i = 1,4
 do j = 1,6
   arr2(i,j) = i+j
   print*,arr2(i,j)+1
 end do
end do

p_arr => arr
v = (/1,3,2/)

associate(aa=>p_arr(2,v),bb=>aa)
 OPEN(1,FILE='ABC011.DATA',status='old')
 READ(1,*) bb
 CLOSE(1)
end associate

end
