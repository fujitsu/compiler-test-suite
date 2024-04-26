type tt
 integer,pointer,contiguous :: aa(:,:)
end type

type(tt) :: obj

allocate(obj%aa(5,4))
obj%aa = 4
obj%aa(:,4)=0
if(is_contiguous(obj%aa) .neqv. .true.) print*,101
if( sss(obj%aa) /=1) print*,'fail'

contains
function sss(b)
integer::b(5,*),sss
if(all(b(:,1:3)==4)) print*,'pass'
sss=1
end function 

end
