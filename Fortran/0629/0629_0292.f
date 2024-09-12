      parameter(NN=10000)
      real*16 a,b,c,r
      complex*32 aa,bb,cc,rr
      dimension a(NN),b(NN),c(NN)
      dimension aa(NN),bb(NN),cc(NN)

      a=1.0
      b=2.0
      c=3.0
      r=51.0
      do 10 i=1,10
      do 10 j=1,NN
          a(j) = a(j) + b(j) + c(j)
   10 continue
      do i=1,NN
        if(a(i).ne.r) then
          print*,a(i)
          print*,'NG'
          stop
        endif
      enddo
      print *,a(NN)
      print*,'OK'

      aa=(1.0,1.0)
      bb=(2.0,2.0)
      cc=(3.0,3.0)
      rr=(51.0,51.0)
      do 100 i=1,10
      do 100 j=1,NN
          aa(j) = aa(j) + bb(j) + cc(j)
  100 continue
      do i=1,NN
        if(aa(i).ne.rr) then
          print*,aa(i)
          print*,'NG'
          stop
        endif
      enddo
      print *,aa(NN)
      print*,'OK'
      end
