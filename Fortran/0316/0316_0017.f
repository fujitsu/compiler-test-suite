
      real*4,    parameter   ::r=1.0
      integer*4, parameter   ::i1=digits(r)
      real*4,    parameter   ::r2=epsilon(r)
      real*4,    parameter   ::r3=huge(r)
      integer*4, parameter   ::i2=maxexponent(r)
      integer*4, parameter   ::i3=minexponent(r)
      integer*4, parameter   ::i4=precision(r)
      integer*4, parameter   ::i5=radix(r)
      integer*4, parameter   ::i6=range(r)
      real*4,    parameter   ::r4=tiny(r)
      integer*4, parameter   ::i7=selected_real_kind(8)
      real*4 rr2

      print *,i1,digits(r)
      rr2=epsilon(r)
      print *,r2,rr2
      print *,r3,huge(r)
      print *,i2,maxexponent(r)
      print *,i3,minexponent(r)
      print *,i4,precision(r)
      print *,i5,radix(r)
      print *,i6,range(r)
      print *,r4,tiny(r)
      print *,i7,selected_real_kind(8)

      end
