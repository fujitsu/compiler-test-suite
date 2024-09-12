      program main
      real a(3,3,3,3,3,3,3),b(3,3,3,3,3,3,3)
      data a,b/4374*0/
      do 10 i1=1,3-1+1
      do 11 i2=1,2+1
      do 12 i3=1,3
      do 13 i4=1,3
      do 14 i5=1,3
        t=i1*3+i2+i3+i4+i5
      do 15 i6=1,3
       do 16 i7=1,3
        a(i1,i2,i3,i4,i5,i6,i7)=t
 16   continue
 15   continue
 14   continue
 13   continue
 12   continue
 11   continue
 10   continue
      write(6,*) a

      do 110 i1=1,3
      do 111 i2=1,3
        s=a(i1,1,i2,1,1,1,1)*2
      do 112 i3=1,2
      do 113 i4=1,3
      do 114 i5=1,2
      do 115 i6=1,3
       do 116 i7=1,2
        b(i1,i2,i3,i4,i5,i6,i7)=s
 116  continue
 115  continue
 114  continue
 113  continue
 112  continue
 111  continue
 110  continue
      write(6,*) b

      do 210 i1=1,3
      do 211 i2=1,3
        a(i1,i2,i1,i2,i1,i2,2)=s
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
        s=a(i2,i1,i2,i1,i2,i1,3)
 211  continue
 210  continue
      write(6,*) a
      write(6,*) b
      stop
      end
