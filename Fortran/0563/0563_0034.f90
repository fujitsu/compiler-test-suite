character(len=:),allocatable :: ch1(:)
character(len=:),allocatable :: ch2(:)
allocate(character(len=4)::ch1(2))
allocate(character(len=5)::ch2(2))
ch1 = "abcd"
ch2 = "efghi"
call sub(ch1,ch2)
print*,"Pass"
contains
subroutine sub(dch1,dch2)
character(len=:),allocatable :: dch1(:),dch2(:)
character(len=:),allocatable :: sch1(:),sch2(:)
allocate(sch1,sch2,source=dch1)
if(len(sch1) .ne. 4) print*,"121"
if(len(sch2) .ne. 4) print*,"122"
if(any(sch1 .ne. "abcd")) print*,"221"
if(any(sch2 .ne. "abcd")) print*,"222"
if(sizeof(sch1) .ne. 8) print*,"223"
if(sizeof(sch2) .ne. 8) print*,"224"
deallocate(sch1,sch2)
allocate(sch1,sch2,source=dch2)
if(len(sch1) .ne. 5) print*,"123"
if(len(sch2) .ne. 5) print*,"124"
if(any(sch1 .ne. "efghi")) print*,"321"
if(any(sch2 .ne. "efghi")) print*,"322"
if(sizeof(sch1) .ne. 10) print*,"223"
if(sizeof(sch2) .ne. 10) print*,"224"
end subroutine
end
