      program main
      integer * 4 a(10)
      data a/20,9,10,3,11,20,1,10,9,10/
      do 1 i=1,10
        n=a(i)
        call sub1(n)
1     continue
      stop
      end
      subroutine sub1(m)
      logical * 4 l4a(20),l4b(20),l4c(20)
      integer * 4 i4l(20)
      integer * 4 i4a(20),i4b(20),i4c(20)
      real * 4 r4a(20),r4b(20),r4c(20)
      real * 8 r8a(20),r8b(20),r8c(20)
      data l4a/.true.,.false.,.true.,.true.,.false.,
     +         .true.,.false.,.true.,.true.,.false.,
     +         .true.,.false.,.true.,.true.,.false.,
     +         .true.,.false.,.true.,.true.,.false./
      data l4b/20*.true./
      data l4c/10*.true.,10*.false./
      data i4l/1,3,2,5,4,7,6,9,8,10,20,19,17,18,15,16,14,13,11,12/
      do 10 i=1,20
        i4a(i)=i
        i4b(i)=i4a(i)+1
        i4c(i4l(i))=i
        r4a(i)=real(i)
        r4b(i)=r4a(i)+real(i4a(i))
        r4c(i4l(i))=real(i)
        r8a(i)=real(i)+real(i4a(i))
        r8b(i)=r8a(i)+1.
        r8c(i4l(i))=real(i)+1.
10    continue
      do 11 i=1,m
        if (l4a(i)) then
          i4a(i)=i
          i4b(i)=i4a(i)+1
          i4c(i4l(i))=i4b(i)+1
          r4a(i)=real(i)
          r4b(i)=r4a(i)+real(i4a(i))
          r4c(i4l(i))=r4b(i)+1.
          r8a(i)=real(i)+real(i4a(i))
          r8b(i)=r8a(i)+1.
          r8c(i4l(i))=real(i)+2.
        endif
11    continue
      do 100 i=1,m
        if (l4a(i).and.l4b(i)) then
          i4a(i)=int(r4a(i))+int(r8a(i))
          i4c(i4l(i))=int(r4a(i))+int(r8a(i))
          r4a(i)=sin(real(i4a(i)))+real(i)
          r4c(i4l(i))=sin(real(i4a(i)))+real(i)
          if (mod(i,m).ne.0) then
            r8a(i)=r8a(i)+r8b(i)+i
            r8c(i4l(i))=r8a(i)+r8b(i)+i
            call sub2(r8a(i))
          endif
        endif
        if (r8a(i).ne.0) then
          l4a(i)=l4a(i).or.l4b(i).or.(.not.l4c(i))
        endif
        if (l4a(i)) then
          l4a(i)=.not.(l4a(i))
        endif
100   continue
      write(6,*) '# vl= # ',m
      write(6,*) l4a,l4b,l4c
      write(6,*) i4a,i4b,i4c
      write(6,*) r4a,r4b,r4c
      write(6,*) r8a,r8b,r8c
      return
      end
      subroutine sub2(r8a)
      real * 8 r8a
      r8a=r8a-1
      return
      end
