type tt
 integer,allocatable :: ii
end type

block
type(tt),allocatable :: alc(:)
allocate(alc(2))
do i=1,2
allocate(alc(i)%ii)
alc(i)%ii=2
if(alc(i)%ii==2) print*,'pass'
end do
end block
end
