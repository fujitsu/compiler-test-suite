      real*4 a041(-02:+02
     1                                   )
      real*4 a042(-02:+02,-02:+02
     1                                   )
      real*4 a043(-02:+02,-02:+02,-02:+02
     1                                   )
      real*4 a044(-02:+02,-02:+02,-02:+02,-02:+02
     1                                   )
      real*4 a045(-02:+02,-02:+02,-02:+02,-02:+02,
     1            -02:+02                )
      real*4 a046(-02:+02,-02:+02,-02:+02,-02:+02,
     1            -02:+02,-02:+02        )
      real*4 a047(-02:+02,-02:+02,-02:+02,-02:+02,
     1            -02:+02,-02:+02,-02:+02)
      data   a041/00005*0.010e0/
      data   a044,a045/625*0,3125*0/

      do 10 i1=-02,+00,3
      do 10 i2=-02,+00,3
       do 10 i3=-02,+00,3
       do 10 i4=-02,+00,3
        do 10 i5=-02,+00,3
        do 10 i6=-02,+00,3
         do 10 i7=-02,+00,3
          do 10 i8=-02,+00,3
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