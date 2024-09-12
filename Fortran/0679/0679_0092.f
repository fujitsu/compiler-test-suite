      real a(3,3,3,3,3,3,3)/2187*1.5/,b(3,3,3,3,3,3,3)/2187*0./
      s=30.
      t=21.

             i1=1
      do 211 i2=1,3
      do 212 i3=1,3
      do 213 i4=1,2
        t=i1*i2+i3-i4
      do 214 i5=1,3
      do 215 i6=1,2
       do 216 i7=1,3
        b(i1,i2,i3,i4,i5,i6,i7)=s + t
 216  continue
 215  continue
        a(i1,i2,i1,i2,i1,i2,1)=t
 214  continue
 213  continue
 212  continue
 211  continue

      write(6,*) b
      stop
      end
