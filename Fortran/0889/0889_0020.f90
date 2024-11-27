 type ty
    integer :: cmp
 end type

 type(ty), pointer, contiguous :: obj2(:,:)
 integer, pointer, contiguous :: ptr(:,:)
 

ptr=>obj2%cmp

end

 
 
