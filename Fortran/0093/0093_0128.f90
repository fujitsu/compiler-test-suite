PROGRAM test
complex(KIND = 16),allocatable :: a(:,:)
real::rr,ii,jj,kk

allocate(a(2,3))
a(1,1) = (2,3)
a(1,2) = (4,5)
a(2,1) = (6,7)
a(2,2) = (8,9)
a(2,3) = (10,11)        

rr =  a(1,1) %re
ii =  a(1,2) %im
jj =  a(2,2) %re
kk =  a(2,3) %im

if(size(a%re) .ne. 6) print*,100
if(UBOUND(a%re,DIM =1) .ne. 2) print*,101
if(UBOUND(a%im,DIM =2) .ne. 3) print*,102
if( rr .ne. 2) print*,103
if( ii .ne. 5) print*,104
if( jj .ne. 8) print*,105
if( kk .ne. 11) print*,106
if(KIND(a%im) .ne. 16) print*,107
if(KIND(a%re) .ne. 16) print*,108
PRINT*,"PASS"

END PROGRAM


