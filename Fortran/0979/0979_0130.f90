character*10 char_d, ccc
integer uint
char_d = "0123456789"
   FLUSH (2,iostat=i2,err=99999)
   uint=2
   open (unit=2)
   FLUSH (2,iostat=i3,err=999)
   WRITE (uint,99) char_d
   rewind 2
   FLUSH (2,iostat=ii,err=999)
   FLUSH (UNIT=2,iostat=ii,err=999)
   FLUSH (2,err=9999,iostat=i1)
   FLUSH (2,iostat=i4,err=999)
   FLUSH (2,   err = 999 ,iostat=i5)
   FLUSH(unit = 2 ,iostat=i8,err=999)
   read (2,99) ccc
   close (2)
   if (char_d.ne.ccc) write(6,*) "NG"
   print *,"pass"
999 continue
   FLUSH (2,iostat=i6,err=999)
99 format(A10)
   FLUSH (2,iostat=i7,err=999)
9999 continue
99999 continue
end