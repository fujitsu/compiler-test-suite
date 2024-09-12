      program main

      integer*4  i001a(10),i001b(10),i001c(10),l1(10),l2(10),iy1(10)
      integer*4  im001a(10),im001b(10)
      real*4     r001a(10),r001b(10),r001c(10)
      real*8     d001a(10),d001b(10),d001c(10)
      complex*8  c001a(10)
      complex*16 cd001a(10),cd001b(10)
      data       i001a/10*0/,i001b/10*8/,i001c/10*3/
      data       r001a/10*2./,r001b/10*1.5679/,r001c/10*3.020456/
      data       d001a/10*1./,d001b/10*1.25/,d001c/10*2.22/
      data       c001a/10*(0.345,1.33)/
      data       cd001a/10*(0.222,1.44)/,cd001b/10*(1.203,1.33)/
      data       l1/2,4,6,8,10,1,3,5,7,9/
      data       l2/4,7,10,1,4,3,7,7,4,2/
      data       iy1/1,1,1,0,1,0,0,1,1,1/
      data       im001a/4,0,33,-2,64,-2,5,6,-1,2/
      data       im001b/33,33,33,1,1,1,55,55,55,0/

      write(6,*) '**** ****'
      x=0
      call sub1

      do 11 i=1,10
        if(iy1(i).eq.1) then
          i001a(l1(i))=int(r001b(i))
          r001a(l2(i))=real(i001a(i))
          r001b(i)=sngl(d001c(l1(i)))
          c001a(l1(i))=cmplx(r001c(i),r001a(2))
        endif
   11 continue
      write(6,*) ' '
      write(6,*) '## check p2 ##'
      write(6,*) i001a
      write(6,101) r001a
      write(6,101) r001b
      write(6,101) c001a

      do 12 i=1,9,2
        if(iy1(i).eq.1) then
          r001a(l1(1))=aint(r001b(i))
          d001a(l2(i))=dnint(d001b(l2(i)))
          i001a(i)=nint(r001c(l1(i)))
        else
          i001a(l1(i))=iabs(i001c(i+1))
          d001a(l2(i))=dabs(d001b(l2(i)))
          cd001a(l2(i))=cdabs(cd001b(l2(i)))
        endif
   12 continue
      write(6,*) ' '
      write(6,*) '## check p3 ##'
      write(6,*) i001a
      write(6,101) r001a
      write(6,101) d001a
      write(6,101) cd001a

      do 13 i=1,10
        if(x.gt.5) then
          r001a(i)=amod(r001b(i),r001c(l1(i)))
          d001a(l2(i))=dprod(r001a(i),r001b(i))
          i001a(l2(i))=isign(i001a(i),i001b(5))
          i001a(i)=idim(i001a(i),i001b(i))
        endif
        x=x+1
   13 continue
      write(6,*) ' '
      write(6,*) '## check p4 ##'
      write(6,101) r001a
      write(6,101) d001a
      write(6,*) i001a

      do 14 i=1,10
        i001a(l1(i))=max(im001a(l2(i)),im001b(l2(2)))
        i001a(i)=min0(i001a(i),im001b(l1(i)))
   14 continue
      write(6,*) ' '
      write(6,*) '## check p5 ##'
      write(6,*) i001a

      do 15 i=1,10
        r001a(l1(i))=imag(c001a(l1(i)))
        cd001a(l2(i))=dconjg(cd001b(l2(i)))
   15 continue
      write(6,*) ' '
      write(6,*) '## check p6 ##'
      write(6,*) i001a
      write(6,101) r001a
      write(6,101) d001a
      write(6,101) cd001a
  101 format(4f16.10)
      stop
      end

      subroutine sub1
      integer*4  i001x(10),i001y(10),i001z(10),il(10),ix(10)
      real*4     r001x(10),r001y(10),r001z(10)
      complex*8  c001x(10),c001y(10),c001z(10)
      data       ix/0,1,1,0,1,1,0,1,1,1/
      data       il/5,3,10,1,2,9,7,4,8,6/
      data       i001x/10*0/,i001y/10*5/,i001z/10*2/
      data       r001x/10*0./,r001y/10*1.222/,r001z/10*2.020202/
      data       c001x/10*(0.,0.)/,c001y/10*(1.,2.11)/,
     1           c001z/10*(1.01,1.22)/
      do 10 i=1,10
        i001x(i)=i001y(i)**i001z(i)
        r001x(i)=r001y(i)**r001z(i)
        c001x(i)=c001y(i)**c001z(i)
        if(ix(i).eq.1) then
          i001x(il(i))=i001y(i)**i-1
          r001x(il(i))=r001y(i)**i-2
          c001x(il(i))=c001y(i)**i-3
        else
          i001x(il(i))=i001y(i)**2
          r001x(il(i))=r001y(i)**2
          c001x(il(i))=c001y(i)**2
        endif
   10 continue
      write(6,*) ' '
      write(6,*) '## check p1 ##'
      write(6,*) i001x
      write(6,100) r001x
      write(6,100) c001x
  100 format(4f16.9)
      return
      end
