TYPE t1
real :: t1_r(2)
END TYPE

TYPE t2
integer :: t2_int
END TYPE

TYPE(t1):: alc_c(0:2)
TYPE(t1),allocatable :: alc(:)
TYPE(t1),pointer :: alc3(:)

TYPE(t2),allocatable :: alc4(:,:)
TYPE(t2),pointer :: alc2(:,:)
TYPE(t2) :: alc2_c(2,2)

alc_c(:)%t1_r(1) = 222.0
alc_c(:)%t1_r(2) = 222.0
alc2_c(:,:)%t2_int = 212

Allocate(alc(3),alc3(3),source = alc_c(:))

Allocate(alc2(2,2),alc4(2,2),source = alc2_c(:,:) )

if(alc(3)%t1_r(2) .ne. 222.0) print *,101
if(alc(1)%t1_r(2) .ne. 222.0) print *,102
if(alc2(1,1)%t2_int .ne. 212) print *,103
if(alc2(1,1)%t2_int .ne. 212) print *,104
if(alc3(3)%t1_r(2) .ne. 222.0) print *,106
if(alc3(1)%t1_r(2) .ne. 222.0) print *,107
if(alc4(1,1)%t2_int .ne. 212) print *,108
if(alc4(1,1)%t2_int .ne. 212) print *,109

if(lbound(alc,1) .ne. 1) print*,110
if(ubound(alc,1) .ne. 3) print*,111
if(lbound(alc2,1) .ne. 1) print*,112
if(ubound(alc2,1) .ne. 2) print*,113
if(lbound(alc3,1) .ne. 1) print*,114
if(ubound(alc3,1) .ne. 3) print*,115
if(lbound(alc4,1) .ne. 1) print*,116
if(ubound(alc4,1) .ne. 2) print*,117

print *,"pass"

end
