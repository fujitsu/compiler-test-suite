      program main
      integer * 4 l(20),vl
      data l/1,10,5,20,5,5,10,9,8,10,11,2,2,15,16,8,9,10,11,20/
      do 100  i=1,20
        vl=l(i)
        call sub(vl)
100   continue
      stop
      end
      subroutine sub(vl)
      logical * 4 l4a(20),l4b(20)
      integer * 4 vl,i4s
      integer * 4 i4a(20),i4b(20)
      real * 4    r4a(20),r4b(20)
      complex * 8 c8a(20),c8b(20)
      data l4a/10*.true.,10*.false./
      data l4b/5*.true.,5*.false.,5*.true.,5*.false./
      data  i4s/0/
      data i4a/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data i4b/20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      data r4a,r4b/10*1.,10*1.,5*1.,5*2.,5*3.,5*4./
      data c8a/10*(2.,1.),10*(3.,1.)/
      data c8b/10*(2.,1.),10*(3.,1.)/
      do 100 i=1,vl
        i4a(i)=int(r4a(i))
        r4a(i)=r4a(i)**i
        c8a(i)=c8b(i)**2.
        i4a(i)=mod(i,2)+i+i4a(i)
        if (l4a(1)) then
          if (l4b(i)) then
             if (real(i).ne.r4b(i)) then
                i4b(i)=int(r4b(i))+sin(real(i))
                i4s = i4b(i)
             endif
          endif
        endif
100     continue
        write(6,*) ' # vl # ',vl
        write(6,*) i4s,i4a,i4b
        write(6,*) r4a,r4b
        write(6,*) c8a,c8b
        return
        end
