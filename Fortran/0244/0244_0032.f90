integer,pointer,contiguous :: aa(:,:)

allocate(aa(5,4))
aa = 4

if(is_contiguous(aa) .neqv. .true.) print*,101
if( sss(aa) /=1) print*,'fail'

contains
function sss(b)
integer::b(5,*),sss
if(all(b(:,1:3)==4)) print*,'pass'
sss=1
endfunction

end
