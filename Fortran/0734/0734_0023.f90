character    cc(9:10, 1:2, 1:3, 5:10, 10, 1:10, 5:6)
character    ccx(10000000)
cc='b'
ccx='x'
read(cc(9:10, 1:2, 3:1:-1, 10:5:-1, 1:10, 10:1:-1, 5:6),55)ccx(1:28800:2)
do i=1,28800,2
if(ccx(i) .ne. 'b') goto 999
if(ccx(i+1) .ne. 'x') goto 999
enddo
55 format(a)
goto 777
999 write(6,*) 'file check-ng: COUNT=',i,'INPUT ITEM=',ccx(i),'UNIT=',ccx(i+1)
777 print *,'pass'
end
