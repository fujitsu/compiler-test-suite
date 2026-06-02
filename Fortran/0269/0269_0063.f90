call sub()
contains
subroutine sub()
integer :: arr(4),brr(4),crr(4),drr(4)
type ty
 integer::ii(4)
 integer::jj(4)
end type
type(ty)::obj
integer::jj(4)
 data ((arr(ii+jj-1),integer::jj=1,2),(brr(ii+jj-1),integer::jj=1,2), integer::ii=1,3,2)/1,2,3,4,5,6,7,8/ 
 data ((obj%ii(ii+jj-1),integer::jj=1,2),(obj%jj(ii+jj-1),integer::jj=1,2), integer::ii=1,3,2)/1,2,3,4,5,6,7,8/

 data ((crr(ii+jj-1),integer::jj=1,2),jj(ii),(drr(ii+jj-1),integer::jj=1,2), integer::ii=1,3,2)/1,2,3,4,5,6,7,8,9,10/ 

 
 if(any(arr /= [1,2,5,6])) print*,101,arr
 if(any(brr /= [3,4,7,8])) print*,102,brr
 if(any(obj%ii /= [1,2,5,6])) print*,103
 if(any(obj%jj /= [3,4,7,8])) print*,104
 if(any(crr /= [1,2,6,7])) print*,105
 if(any(drr /= [4,5,9,10])) print*,106
 if(jj(1) /= 3)print*,107
 if(jj(3) /=8)print*,108
print*,"PASS"
end
end

