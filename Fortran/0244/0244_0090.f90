integer :: l=1,m=4
character(len=4)::aa(4,4,4)
aa='abc'

 if(is_contiguous(aa(:,:,2:)(1:4))) print*,'pass'
 if(is_contiguous(aa(l:,l:m,2:)(l:m)) .neqv. .true.) print*,101
 if(is_contiguous(aa(:,:,2:)(l-1+1:m-1)) .neqv. .false.) print*,102
 if(is_contiguous(aa(:,:,2:)(l-1+1:m-1)) .neqv. .false.) print*,103

end
