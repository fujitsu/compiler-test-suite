integer :: xarr(10)
xarr=23
open (UNIT=10,  IOSTAT=iost,File= 'ABC018.DATA')

associate(aa=>i)
 write (UNIT=10, FMT='(I)' , IOSTAT=iost) (xarr(aa), aa= 1,10)
end associate

if(iost ==0) print*,'pass'
close (10,status='delete')
end
