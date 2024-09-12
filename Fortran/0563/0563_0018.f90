integer,pointer :: int01(:),int02(:)
integer :: int03(1:3,1) = 1
integer :: ii=5
allocate(int01(2:4),int02(1:3),source=int03(1:3,1),stat=ii)

if(ii .ne. 0)print*,101
if(size(int01).ne.3)print*,102
if(size(int02).ne.3)print*,103
if(any(int01.ne.1))print*,104
if(any(int02.ne.1))print*,105
if(lbound(int01,1).ne.2)print*,106
if(ubound(int01,1).ne.4)print*,107
if(lbound(int02,1).ne.1)print*,108
if(ubound(int02,1).ne.3)print*,109
print*,'pass'

end
