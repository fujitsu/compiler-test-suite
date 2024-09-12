      program main
      integer * 4 i4l(20)
      integer * 4 i4a(20),i4b(20),i4c(20)
      real * 4 r4a(20),r4b(20),r4c(20)
      real * 8 r8a(20),r8b(20),r8c(20)
      logical * 4 l4a(20),l4b(20),l4c(20)
      data l4a/.true.,.false.,.true.,.true.,.false.,
     +         .true.,.false.,.true.,.true.,.false.,
     +         .true.,.false.,.true.,.true.,.false.,
     +         .true.,.false.,.true.,.true.,.false./
      data l4b/10*.true.,10*.false./
      data l4c/20*.true./
      data i4l/0,0,10,20,5,10,9,8,0,0,10,15,0,0,20,20,1,20,19,20/
      data mm/20/
      do 1 i=1,mm
        if (l4a(i)) then
          i4a(i)=i
          i4b(i)=i+1
          i4c(i)=i4a(i)+1+1
          r4a(i)=i
          r4b(i)=i-1
          r4c(i)=i+2
          r8a(i)=i**2
          r8b(i)=i**3
          r8c(i)=r8b(i)-r8a(i)
        else
          i4a(i)=i
          i4b(i)=i-1
          i4c(i)=i4a(i)-1*1
          r4a(i)=i
          r4b(i)=i+2
          r4c(i)=i+3
          r8a(i)=i**i4a(i)
          r8b(i)=i**2
          r8c(i)=r8b(i)-r8a(i)
        endif
1     continue
      is=0
      do 100 i=1,20
        if (i4l(i).gt.0) goto 101
        i4l(i)=10
101     do 102 j=i4l(i),1
          if (l4a(j)) then
            if (i.gt.10) then
              i4a(j)=r4a(j)+j
              l4a(j)=l4a(j).or.l4c(j)
              is=0
            else
              i4a(j)=1
              l4a(j)=l4a(j).and.l4c(j)
              is=1
            endif
            r8a(j)=i4a(j)+1.
          endif
102     r4a(j)=i4a(j)+r4a(j)+r8a(j)
        if (is.eq.0) goto 105
        do 103 j=i4l(i),1,i
          i4b(j)=i
          r4b(j)=j
          l4b(j)=.not.(l4b(j))
          if (i4b(j)-r4b(j).lt.0) goto 103
          r8b(j)=i4b(j)+r4b(j)+j
          if (r8b(j).lt.0) goto 103
103     r8b(j)=r8b(j)*(-1)
105   continue
100   continue
      do 200 i=1,20
        do 200 j=1,i,2
          if (j.lt.5.and.j.gt.15) goto 201
            i4c(j)=i4c(j)+i4a(j)**2
          i4a(j)=i4a(j)+1
200   continue
201   continue
      write(6,*) is
      write(6,*) i4a,i4b,i4c
      write(6,*) r4a,r4b,r4c
      write(6,*) r8a,r8b,r8c
      write(6,*) l4a,l4b,l4c
        stop
        end
