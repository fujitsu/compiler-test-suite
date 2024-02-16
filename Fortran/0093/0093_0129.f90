implicit none
type t
complex,pointer :: arr(:)
real::kk,ll
end type t

type (t)::obj

allocate (obj%arr(4))
        
obj%arr(2+1) =(3.877777,4.4343)
obj%kk = obj%arr(2+1)%re
obj%ll = obj%arr(2+1)%im

if(SIZE (obj%arr) .ne. 4) print*,101
if(SIZEOF(obj%arr) .ne. 32) print*,102
if(UBOUND(obj%arr,1) .ne. 4) print*,103
if(LBOUND(obj%arr,1) .ne. 1) print*,104
if( obj%arr(2+1)%re .ne. 3.877777) print*,105
if( obj%arr(2+1)%im .ne. 4.4343) print*,106
if( obj%kk .ne. 3.877777) print*,107
if( obj%ll .ne. 4.4343) print*,108
PRINT*,"PASS"
end

