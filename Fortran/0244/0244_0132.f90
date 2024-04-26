type tt1
 integer :: i(5,6) = 4
end type

type tt
 type(tt1),pointer :: bb
end type

type(tt) :: obj
integer :: n=2

allocate(obj%bb)

if(is_contiguous(obj%bb%i) .neqv. .true.) print*,101
if(is_contiguous(obj%bb%i(:,:)) .neqv. .true.) print*,102
if(is_contiguous(obj%bb%i(2:,:)) .neqv. .false.) print*,103
if(is_contiguous(obj%bb%i(:,2:)) .neqv. .true.) print*,104
if(is_contiguous(obj%bb%i(2:5,3)) .neqv. .true.) print*,105
if(is_contiguous(obj%bb%i(::n,:)) .neqv. .false.) print*,106
if(is_contiguous(obj%bb%i(:,::n)) .neqv. .false.) print*,107
if(is_contiguous(obj%bb%i(1:5:n-1,n-1:n*3:1)) .neqv. .true.) print*,108
if(is_contiguous(obj%bb%i(n-1:(n*3)-1:n-1,n-1:n*3:n-1)) .neqv. .true.) print*,109
if(is_contiguous(obj%bb%i([2,3],:)) .neqv. .false.) print*,110
if(is_contiguous(obj%bb%i(:,::n-1)) .neqv. .true.) print*,111
print*,'pass'

end
