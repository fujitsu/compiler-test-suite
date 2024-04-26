integer,pointer::arr(:,:)
integer::i=1,j=3,k=7
integer,target::tgt(7,8) = 23

arr=>tgt

if(is_contiguous(tgt(ff(0):1+ff(5),ff(1)-1:ff(6)+1)) .and. is_contiguous(arr(ff(0):1+ff(5),ff(1)-1:ff(6)+1))) print*,'pass'

if(is_contiguous(arr) .neqv. .true.) print*,101,'arr'
if(is_contiguous(arr(:,:)) .neqv. .true.) print*,102,'arr(:,:)'
if(is_contiguous(arr(2:,:)) .neqv. .false.) print*,103,'arr(2:,:)'
if(is_contiguous(arr(2,:)) .neqv. .false.) print*,104,'arr(2,:)'
if(is_contiguous(arr(:,2)) .neqv. .true.) print*,105,'arr(:,2)'
if(is_contiguous(arr(:,2:)) .neqv. .true.) print*,106,'arr(:,2:)'
if(is_contiguous(arr(i,:)) .neqv. .false.) print*,109,'arr(i,:)'
if(is_contiguous(arr(:,:2)) .neqv. .true.) print*,110,'arr(:,:2)'
if(is_contiguous(arr(:,::2)) .neqv. .false.) print*,111,'arr(:,::2)'
if(is_contiguous(arr(:,::i)) .neqv. .true.) print*,112,'arr(:,::i)'
if(is_contiguous(arr(:,::j)) .neqv. .false.) print*,113,'arr(:,::j)'
if(is_contiguous(arr(:,[1,2,3])) .neqv. .false.) print*,114,'arr(:,[1,2,3])'
if(is_contiguous(arr(1:7,:)) .neqv. .true.) print*,115,'arr(1:7,:)'
if(is_contiguous(arr(i:k,i:k+1)) .neqv. .true.) print*,116,'arr(i:k,i:k+1)'

contains
function ff(dd)
integer::dd,ff

ff=dd+1
end function
end
