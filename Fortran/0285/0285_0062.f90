integer ::  i,xarr(10),xbrr(10)=22
xarr=1
open (UNIT=10,  File= 'TestMyFile137')

write (UNIT=10, FMT='(I)' ) (xarr(i), i= 1,10)

associate(aaa=>i,bb=>10)
close(10)
open (UNIT=10,  File= 'TestMyFile137')
if(all(xbrr /= 22)) print*,101
read (IOSTAT=iost, UNIT=10, FMT='(I)')(xbrr(aaa),aaa=1,bb)
end associate 
if(all(xbrr == 1) .and. iost == 0)print*,'pass'
close (10,status='delete')
end