      program main
      integer * 4 i4a(20),i4b(20),i4c(20)
      real * 4 r4a(20),r4b(20),r4c(20),r4d(20)
      real * 8 r8a(20),r8b(20),r8c(20)
      logical * 4 l4a(20),l4b(20),l4c(20)
      complex * 8 c8a(20),c8b(20)
      complex * 16 c16a(20),c16b(20)
      data r4d/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,
     +         11.,12.,13.,14.,15.,16.,17.,18.,19.,20/
      data l4a/.true.,.false.,.true.,.false.,.true.,
     +         .true.,.false.,.true.,.false.,.true.,
     +         .true.,.false.,.true.,.false.,.true.,
     +         .true.,.false.,.true.,.false.,.true./
      data l4b/5*.true.,5*.false.,5*.true.,5*.false./
      data l4c/.true.,.false.,.true.,.false.,.true.,
     +         .true.,.false.,.true.,.false.,.true.,
     +         .true.,.false.,.true.,.false.,.true.,
     +         .true.,.false.,.true.,.false.,.true./
      data l/10/
      data m/20/
      do 1 i=1,l*2
        i4a(i)=1
        i4b(i)=i+1
        i4c(i)=i4a(i)+2
        r4a(i)=1.
        r4b(i)=real(i4a(i))
        r4c(i)=max(i4a(i),i4b(i))
        r8a(i)=1.
        r8b(i)=i
        r8c(i)=real(i4c(i))
        c8a(i)=r4a(i)+r4b(i)
        c8b(i)=i
        c16a(i)=r4a(i)+r4b(i)
        c16b(i)=i
1     continue
      do 100 i=1,m
        do 101 j=1,max(i,m)
          i4a(j)=j
          r4a(j)=real(j)
          r8a(j)=real(i4a(j))
101     continue
        do 102 j=1,i,2
          if (j.gt.1) then
            i4b(j)=i4b(j)+j
          endif
          r4b(j)=r4b(j)+1
          if (r4b(j).gt.0) then
            r8b(j)=i4a(j)+r4b(j)
          endif
102     continue
100   continue
      do 200 i=1,m
        do 201 j=1,i,2
          if (l4c(j)) then
            i4c(j)=i4c(i)+1
            r4c(j)=j
            r8c(j)=real(i4c(j))+r4c(j)+r8c(i)
          endif
201     continue
        do 202 j=i,m*2/m+1
          if (l4c(j)) then
            i4c(j)=i4c(j)+1
            r4c(j)=j
            r8c(j)=real(i4c(j))+r4c(j)+r8c(j)
          endif
202     continue
200   continue
      do 300 i=1,20
        call sub(r4d(i))
300   continue
      write(6,*) '## main ##'
      write(6,*) i4a,i4b,i4c
      write(6,*) r4a,r4b,r4c
      write(6,*) r8a,r8b,r8c
      write(6,*) l4a,l4b,l4c
      stop
      end
      subroutine sub(vl)
      real * 4 vl
      real * 4 r4a(20),r4b(20)
      integer * 4 i4a(20),i4b(20)
      data i4a/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data i4b/20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      data r4a/5*0.,5*2.,5*5.,5*0./
      data r4b/5*2.,5*0.,5*3.,5*4./
      if (vl.le.17) then
        do 1 i=1,vl+3
          i4a(i)=i4a(i)+1
          if (i4a(i).ne.0.and.mod(i,2).ne.0) then
            r4a(i)=i4a(i)+1.
          endif
1       continue
      endif
      do 2 i=1,int(vl),2
        i4b(i)=i4b(i)+1
        if (i4b(i).ne.0.and.mod(i,2).ne.0) then
          r4b(i)=i4b(i)+1.
        endif
2     continue
      write(6,*) '## sub ##'
      write(6,*) i4a,i4b
      write(6,*) r4a,r4b
      return
      end
