      implicit real*8(a-g,o-z)
      dimension a(2000),comax(7),n(7),x(140)
      common a
      common  /sub/ ns,nr,comax,n,i7,kw
      call init(x)
      l=1
      m=1

      do 131 j3=1,nr
      do 124 j2=1,2
      do 123 j1=1,ns
      abc=comax(j1)
      nisa=n(j1)
      do 122 j=1,nisa
      do 122 k=1,nisa
      ci1=j-k
      ci1=ci1*3.14159265d0
      ci2=j+k-kw
      ci2=ci2*3.14159265d0
      ci3=x(l+1)-x(l)
      ci4=x(l+1)
      ci5=ci4-ci3
      ci7=1.
      ci8=2*kw-1
      if(j2-1) 100,100,130
  130 cbd=2.4674011d0/abc**2
      cc7=(2*j-kw)*(2*k-kw)
      ci7=cc7*cbd
      ci8=-ci8*ci7
  100 ci6=(sin(ci2*ci4/abc)-sin(ci2*ci5/abc))/ci2*ci8
      if(j-k) 110,120,110
  110 ci7=(sin(ci1*ci4/abc)-sin(ci1*ci5/abc))/ci1*ci7
      go to 121
  120 ci7=ci3/abc*ci7
  121 a(m)=ci6+ci7
  122 m=m+1
  123 l=l+2
  124 l=l-2*ns
  131 l=l+2*ns
      write(6,*)  ' l= '
      write(6,1000) l
      write(6,*)  ' a= '
      write(6,1001) a
 1000 format(/i40)
 1001 format(2e40.15)
      stop
      end
      subroutine init(x)
      implicit real*8(a-g,o-z)
      dimension a(2000),comax(7),n(7),x(140)
      common a
      common  /sub/ ns,nr,comax,n,i7,kw
      do 10 i=1,2000
        a(i)=dfloat(i)
  10  continue
      do 20 i=1,7
        comax(i)=2.d0
        n(i)=i+5
  20  continue
      do 30 i=2,140,2
        x(i)=dfloat(100-i)
        x(i-1)=1.+dfloat(i)
  30  continue
      kw=1
      nr=2
      ns=5
      return
      end
