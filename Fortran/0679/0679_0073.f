      real*4 a041(02                  )
      real*4 a042(02,03               )
      real*4 a043(02,03,04            )
      real*4 a044(02,03,04,05         )
      real*4 a045(02,03,04,05,06      )
      real*4 a046(02,03,04,05,06,07   )
      real*4 a047(02,03,04,05,06,07,08)

      data   a041/00002*0.010e0/
      data   a042/6*1.0/
      data   a043/24*1.0/
      data   a044/120*1.0/
      data   a045/720*1.0/
      data   a046/5040*1.0/
      data   a047/40320*1.0/

       do 10 i1=1,2,1
       do 10 i2=i1,i1+1,i1
        do 10 i3=i2,i2+1,i2
        do 10 i4=i3,i3+1,i3
         do 10 i5=i4,i4+1,i4
         do 10 i6=i5,i5+1,i5
          do 10 i7=i6,i6+1,i6
           do 10 i8=i7,i7+1,i7
            a041(i1                  )=a041(i1                  )+i8
            a042(i1,i2               )=a041(i1                  )+i8
            a043(i1,i2,i3            )=a042(i1,i2               )+i8
            a044(i1,i2,i3,i4         )=a043(i1,i2,i3            )+i8
            a045(i1,i2,i3,i4,i5      )=a044(i1,i2,i3,i4         )+i8
            a046(i1,i2,i3,i4,i5,i6   )=a045(i1,i2,i3,i4,i5      )+i8
            a047(i1,i2,i3,i4,i5,i6,i7)=a046(i1,i2,i3,i4,i5,i6   )+i8
10    continue
      print *,a044
      print *,a045
      stop
      end
