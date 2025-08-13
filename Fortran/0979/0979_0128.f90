character*10 char_d, ccc
integer uint
char_d = "0123456789"
   uint=14
   open (unit=14)
   FLUSH (13,iostat=i2,err=99999)
   FLUSH (14,iostat=i3,err=999)
   WRITE (uint,99) char_d
   rewind 14
   FLUSH (unit=14,iostat=ii,err=999)
   FLUSH (UNIT=14,iostat=ii,err=999)
   FLUSH (UNIT=15,iostat=i1,err=9999)
   FLUSH (unit = 16,iostat=i4,err=999)
   FLUSH ( 17,iostat=i5,err=999)
   FLUSH ( 18  , iostat = i8 ,err = 999)
   read (14,99) ccc
   close (14)
   FLUSH (unit = 19 ,   iostat  =  i6  ,  err  =  999     )
   FLUSH (    unit = 20 ,   iostat  =  i6  ,  err  =  999     )
   if (char_d.ne.ccc) write(6,*) "NG"
   print *,"pass"
999 continue
99 format(A10)
9999 continue
99999 continue
end
