complex,allocatable :: aa(:)
complex :: bb(4)
real :: rr,ii,jj,kk

allocate(aa(4))
aa =( 3.2,4.2)
bb =( 2.2,3.2)
bb(2) =(4.2,5.2)

rr= aa(2)%re
ii= aa(2)%im
aa(2)%re = 6.2
aa(2)%im = 7.2

jj= bb(2)%re
kk= bb(2)%im
bb(2)%re = 8.2
bb(2)%im = 9.2

if(SIZE(aa%re) .ne. 4) print*,101
if(SIZE(bb%im) .ne. 4) print*,102
if(SIZEOF(aa%re) .ne. 16) print*,103
if(SIZEOF(bb%im) .ne. 16) print*,104
if (rr .ne. 3.2) print*,105
if (ii .ne. 4.2) print*,106
if (aa(2) .ne. (6.2,7.2)) print*,107
if (jj .ne. 4.2) print*,108
if (kk .ne. 5.2) print*,109
if (bb(2) .ne. (8.2,9.2)) print*,110
PRINT*,"PASS"

 end

