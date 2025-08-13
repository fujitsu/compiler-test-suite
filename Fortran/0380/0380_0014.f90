 integer:: a(10), i, result
 do i=1,10
  a(i) =5
 enddo
 open(file="fort.55", unit=1, status="new", access="stream",form="unformatted")
   write(1), a
 close(1,status="keep")

 open(file="fort.55", unit=1, status="old", access="stream",form="unformatted")
 read(1) a
 do i = 1,10
   if (a(i) .ne. i) write (6,*),'error at ', i
 enddo
 do i = 10,1,-1
   read(1, pos=(i-1)*4+1),result
   if (result .ne. i) write (6,*),'error at ', i
 enddo
 write (6,*)"pass"
 close(1,status="delete")
end
