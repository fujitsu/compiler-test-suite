character*10 char_d, ccc
integer uint
char_d = "0123456789"
   uint=21
   open (unit=21)
   WRITE (uint,99) char_d
   rewind 21
   FLUSH (uint)
   FLUSH      (22)
   FLUSH (   23     )
   FLUSH (  24)
   FLUSH (25                           )
   FLUSH(26)
   flush (unit=27)
   read (21,99) ccc
   close (21)
   if (char_d.ne.ccc) write(6,*) "NG"
   print *,"pass"
99 format(A10)
end
