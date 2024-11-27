character*10 char_d, ccc
integer uint
char_d = "0123456789"
   uint=2
   open (unit=2)
   WRITE (uint,99) char_d
   rewind 2
   FLUSH (uint)
   read (2,99) ccc
   close (2)
   if (char_d.ne.ccc) write(6,*) "NG"
   print *,"pass"
99 format(A10)
end
