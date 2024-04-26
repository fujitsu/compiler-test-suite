integer :: arr1(4,3) = 2,arr2(4,3) = 3
integer :: i=2

associate(aa=>is_contiguous(arr1 + arr2) .and. .true.,bb=>arr1 + arr2)
 if(aa) print*,'pass'
 if(all(bb/=5)) print*,201
end associate

associate(aa=>is_contiguous(arr1 + arr2 + arr1) .and. .true.,bb=>arr1 + arr2 + arr1)
 if(aa .neqv. .true.) print*,101
 if(all(bb/=7)) print*,202
end associate

associate(aa=>is_contiguous(arr1 + arr2 + arr1 + arr2) .and. .true.,bb=>arr1 + arr2 + arr1 + arr2)
 if(aa .neqv. .true.) print*,102
 if(all(bb/=10)) print*,202
end associate

associate(aa=>is_contiguous(arr1 + arr2 + arr1 + ff(2)) .and. .true.,bb=>arr1 + arr2 + arr1 + ff(2))
 if(aa .neqv. .true.) print*,103
 if(all(bb/=9)) print*,203
end associate

associate(aa=>is_contiguous(arr1 + arr2 + arr1 + ff(i)) .and. .true.,bb=>arr1 + arr2 + arr1 + ff(i))
 if(aa .neqv. .true.) print*,104
 if(all(bb/=9)) print*,204
end associate

contains
function ff(d)
integer :: ff,d
ff=d
end function
end
