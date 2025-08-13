character*10 char_d, ccc
integer uint
char_d = "0123456789"
   FLUSH (29,iostat=i2,err=99999)
   uint=29
   open (unit=29)
   FLUSH (29,iostat=i3,err=999)
   WRITE (uint,99) char_d
   rewind 29
   FLUSH (iostat=ii,unit=29,err=999)
   FLUSH (UNIT=29,iostat=ii,err=999)
   FLUSH (err=9999,iostat=i1,Unit=29)
   FLUSH (29,iostat=i4,err=999)
   FLUSH (29,   err = 999 ,iostat=i5)
   FLUSH( err=999, iostat=i8, unit=29  )
   read (29,99) ccc
   close (29)
   if (char_d.ne.ccc) write(6,*) "NG"
   print *,"pass"
999 continue
   FLUSH (iostat=i6,unit=29,err=999)
99 format(A10)
   FLUSH (29,iostat=i7,err=999)
9999 continue
99999 continue
end
