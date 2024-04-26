character(len=3) :: arr1(4,3) = 'abc',arr2(4,3) = 'def'
character(len=3) :: i='ghi'

associate(aa=>is_contiguous(arr1 // arr2) .and. .true.,bb=>arr1 // arr2)
 if(aa) print*,'pass'
 if(all(bb/='abcdef')) print*,201
end associate

associate(aa=>is_contiguous(arr1 // arr2 // arr1) .and. .true.,bb=>arr1 // arr2 // arr1)
 if(aa .neqv. .true.) print*,101
 if(all(bb/='abcdefabc')) print*,202
end associate

associate(aa=>is_contiguous(arr1 // arr2 // arr1 // arr2) .and. .true.,bb=>arr1 // arr2 // arr1 // arr2)
 if(aa .neqv. .true.) print*,102
 if(all(bb/='abcdefabcdef')) print*,202
end associate

associate(aa=>is_contiguous(arr1 // arr2 // arr1 // ff('ghi')) .and. .true.,bb=>arr1 // arr2 // arr1 // ff('ghi'))
 if(aa .neqv. .true.) print*,103
 if(all(bb/='abcdefabcghi')) print*,203
end associate

associate(aa=>is_contiguous(arr1 // arr2 // arr1 // ff(i)) .and. .true.,bb=>arr1 // arr2 // arr1 // ff(i))
 if(aa .neqv. .true.) print*,104
 if(all(bb/='abcdefabcghi')) print*,204
end associate

contains
function ff(d)
character(len=3) :: ff,d
ff=d
end function
end
