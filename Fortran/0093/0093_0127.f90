complex,allocatable :: cmp(:)
complex::x=(3.44,7.56)
allocate (cmp(int(x%re)))

call sub(cmp)
contains

subroutine sub(dmy)
complex,allocatable::dmy(:)
dmy(:) = [(3,4),(5,6),(7,8)]
if(UBOUND(dmy%re,1) .ne. 3) print*,101        
if(LBOUND(dmy%re,1) .ne. 1) print*,102     
if(size(dmy%re) .ne. 3) print*,103     
if(sizeof(dmy%im) .ne. 12) print*,104
if(dmy(1)%re .ne. 3) print*,105
if(dmy(1)%im .ne. 4) print*,106
if(dmy(2)%re .ne. 5) print*,107
if(dmy(2)%im .ne. 6) print*,108
if(dmy(3)%re .ne. 7) print*,109
if(dmy(3)%im .ne. 8) print*,110
PRINT*,"PASS"
end subroutine sub

end

