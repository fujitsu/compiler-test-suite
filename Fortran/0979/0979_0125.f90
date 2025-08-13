character*10 char_d, ccc
integer uint
char_d = "0123456789"
   uint=11
   open (unit=11)
   WRITE (uint,99) char_d
   rewind 11
   FLUSH (11,iostat=ii,err=999)
   read (11,99) ccc
   close (11)
   if (char_d.ne.ccc) write(6,*) "NG"
   print *,"pass"
999 continue
99 format(A10)
end
