 type ty
    integer :: cmp
 end type

 type(ty), pointer :: obj(:,:)
 integer, pointer, contiguous :: ptr(:,:)
 

ptr=>obj%cmp 

end

 
 
