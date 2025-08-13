real :: rr
rr =2.e0
open(10,file='fort.57',err=999,status="new",access="stream",form='unformatted')
write(10) rr
write(10) rr
write(10) rr
write(10) rr
close(unit=10,err=999,status="keep")
IUN=10
open(file="fort.57", unit=10, access="stream",status="old",form='unformatted')
READ (IUN, '(1X, G14.7)', IOSTAT = IOS) X
read (10) x
READ (IUN, '(1X, G14.7)', IOSTAT = IOS), X
read (10) x
close(unit=10,err=999,status="delete")
write (6,*) x
999 continue
close(unit=10,err=999,status="delete")
print *,"psss: 012"
end
