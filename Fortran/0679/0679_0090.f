      program main
      real a(3,3,4,3,3)/324*0./,b(3,3,4,3,3)/324*3./
      real*8 d(3,3,4,3,3)/324*5./
      data n/4/
      do 10 i1=1,3
      do 11 i2=1,3
      do 12 i3=1,n
        t=i3*2
      do 13 i4=1,3
        t=i1*3+i2+i3+i4
      do 14 i5=1,3
        a(i1,i2,i3,i4,i5)=t
 14   continue
        s=t-i4
 13   continue
 12   continue
 11   continue
 10   continue

      write(6,*) ' ## s ##'
      write(6,1000)   s
      write(6,*) ' ## t ##'
      write(6,1000)   t
      write(6,*) ' ## a ##'
      write(6,1000)   a
 1000 format(4e20.8)

      do 110 i1=1,3
      do 111 i2=1,3
        s=a(i1,1,i2,1,1)*2
      do 112 i3=1,4
      do 113 i4=1,3
      do 114 i5=1,2
        b(i1,i2,i3,i4,i5)=s
 114  continue
 113  continue
 112  continue
 111  continue
 110  continue

      write(6,*) ' ## b ##'
      write(6,1000)   b

      do 210 i1=1,3
      d1=i1/2.
      do 211 i2=1,3
      do 212 i3=1,4
      do 213 i4=1,3
      do 214 i5=1,3
        d(i1,i2,i3,i4,i5)=d1
        d1=d1*i5
 214  continue
 213  continue
 212  continue
 211  continue
 210  continue

      write(6,*) ' ## d1##'
      write(6,1000)   d1
      write(6,*) ' ## d ##'
      write(6,1000)   d

      do 310 i1=1,3
      do 311 i2=1,3
      do 314 i5=1,3
      do 312 i3=1,4
      do 313 i4=1,3
        d1=d(i1,i2,i3,i4,i5)
 313  continue
 312  continue
 314  continue
 311  continue
 310  continue

      write(6,*) ' ## d1##'
      write(6,1000)   d1

      stop
      end
