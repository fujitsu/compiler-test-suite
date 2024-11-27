 write(2147483647,*) 1
 rewind 2147483647
 read(2147483647,*) i
 if (i/=1)write(6,*) "NG"
 print *,'pass'
 end
