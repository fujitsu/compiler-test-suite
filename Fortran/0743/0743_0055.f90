      real*4      r4
      real*8      r8
      real*16     rx
      r4=100
      r8=100
      rx=100
      if (kind(nearest(r4 ,r4))/=4)write(6,*) "NG"
      if (kind(nearest(r4 ,r8))/=4)write(6,*) "NG"
      if (kind(nearest(r4 ,rx))/=4)write(6,*) "NG"
      if (kind(nearest(r8 ,r4))/=8)write(6,*) "NG"
      if (kind(nearest(r8 ,r8))/=8)write(6,*) "NG"
      if (kind(nearest(r8 ,rx))/=8)write(6,*) "NG"
      if (kind(nearest(rx ,r4))/=16)write(6,*) "NG"
      if (kind(nearest(rx ,r8))/=16)write(6,*) "NG"
      if (kind(nearest(rx ,rx))/=16)write(6,*) "NG"
      print *,'pass'
      end
