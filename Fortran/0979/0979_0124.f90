character*10 char_d, ccc
integer uint
char_d = "0123456789"
   uint=10
   open (unit=10)
   WRITE (uint,99) char_d
   rewind 10
   FLUSH (uint)
   read (10,99) ccc
   close (10)
   if (char_d.ne.ccc) write(6,*) "NG"
   print *,"pass"
99 format(A10)
end
