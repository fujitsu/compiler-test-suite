      program main
      integer * 4 i4a00a(50),i4a00b(50),i4a00c(50)
      real    * 4 r4a00a(50),r4a00b(50),r4a00c(50)
      real    * 8 r8a00a(50),r8a00b(50),r8a00c(50)
      data nn,mm/1,50/
      do 1 i=1,50
        i4a00a(i)=i
        i4a00b(i)=1.
        i4a00c(i)=2.
        r4a00a(i)=i4a00a(i)
        r4a00b(i)=i4a00b(i)
        r4a00c(i)=i4a00c(i)
        r8a00a(i)=i4a00a(i)
        r8a00b(i)=i4a00b(i)
        r8a00c(i)=i4a00c(i)
1     continue
      i4s001 = 0
      do 100 i001=1,mm
        if (i4a00a(i001).gt.0) then
          do 200 j001=nn,50,2
            r4a00a(j001)=r4a00a(j001)/r4a00c(j001)+i001
            i4s001=i4s001+i4a00b(j001)
200       continue
          r4s001=0
          if (j001.gt.30) then
            do 201 j002=nn,50,3
              if (r4a00b(i001).gt.0) then
                r4a00c(j002)=j002+i001-i4s001
                r4s001=r4s001+r4a00c(j002)
              endif
201         continue
          endif
        endif
100   continue
      write(6,*) '## ##'
      write(6,900) r4a00a,r4a00c,r4s001
900   format(1h0,5f12.3)
      write(6,901) i4s001
901   format(1h0,i10)
      stop
      end
