      program main
      integer * 4 i4a(100),i4b(100),i4c(100)
      real * 4 r4a(100),r4b(100),r4c(100)
      real * 8 r8a(100),r8b(100),r8c(100)
      logical * 4 l4a(100),l4b(100),l4c(100)
      complex * 8 c8a(100),c8b(100),c8c(100)
      complex * 16 c16a(100),c16b(100),c16c(100)
      common /com1/i4a,i4b,i4c,l4a,l4b,l4c
      common /com2/r4a,r4b,r4c
      common /com3/r8a,r8b,r8c
      common /com4/c8a,c8b,c8c,c16a,c16b,c16c
      data l4a/20*.true.,20*.false.,20*.true.,20*.false.,20*.true./
      data l4b/20*.true.,20*.false.,20*.true.,20*.false.,20*.true./
      data l4c/20*.true.,20*.false.,20*.true.,20*.false.,20*.true./
      data c8a/20*(1.,2.),20*(2.,0.),20*(3.,0.),20*(4.,0.),20*(1.,1.)/
      data c8b/20*(1.,2.),20*(2.,0.),20*(3.,0.),20*(4.,0.),20*(1.,1.)/
      data c8c/20*(1.,2.),20*(2.,0.),20*(3.,0.),20*(4.,0.),20*(1.,1.)/
      do 1   i=1,100
        i4a(i)=i
        i4b(i)=1
        i4c(i)=i4a(i)
        r4a(i)=i
        r4b(i)=1.
        r4c(i)=2.
        r8a(i)=i4a(i)
        r8b(i)=r4b(i)
        r8c(i)=1.
1     continue
      do 2 i=7,11
        n=i
        call sub(n)
2     continue
      stop
      end
      subroutine sub(m)
      integer * 4 i4a(100),i4b(100),i4c(100)
      real * 4 r4a(100),r4b(100),r4c(100)
      real * 8 r8a(100),r8b(100),r8c(100)
      logical * 4 l4a(100),l4b(100),l4c(100)
      complex * 8 c8a(100),c8b(100),c8c(100)
      complex * 16 c16a(100),c16b(100),c16c(100)
      common /com1/i4a,i4b,i4c,l4a,l4b,l4c
      common /com2/r4a,r4b,r4c
      common /com3/r8a,r8b,r8c
      common /com4/c8a,c8b,c8c,c16a,c16b,c16c
      l = 0
      do 100 i=1,m**2,1
        l = l+1
        if (m**2.gt.100)  goto 101
        i4a(i)=m**2
        r4a(i)=int(i)+sin(r4b(i))
        i4b(l)=m**2
        r4b(l)=l
        r8a(i)=real(m**2)
101     continue
100   continue
      write(6,*) '## no.1 ##'
      write(6,*) i4a,i4b,i4c
      write(6,*) r4a,r4b,r4c
      write(6,*) r8a,r8b,r8c
      write(6,*) c8a,c8b,c8c
      return
      end
