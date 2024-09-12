      program main
      parameter (r4eps=1e-4)
      integer * 4 i4a00a(50),i4a00b(50),i4a00c(50)
      integer * 4 i4s001,i4s002,i4s003
      real    * 4 r4a00a(50),r4a00b(50),r4a00c(50)
      real * 8 r8a00a(50),r8a00b(50),r8a00c(50)
      data m1,m2,n1/1,50,1/
      do 90 i=1,50
        i4a00a(i)=i
        i4a00b(i)=0
        i4a00c(i)=0
        r4a00a(i)=i
        r4a00b(i)=1.
        r4a00c(i)=2.
        r8a00a(i)=i
        r8a00b(i)=1.
        r8a00c(i)=2.
90    continue
      i4s001 = 0
      i4s002 = 0
      i4s003 = 0
      do 100 i001=abs(m1),int(m2),n1
        i4a00a(i001)=r4a00a(i001)+r8a00a(i001)
        if((abs(r4a00b(i001))+i001).gt.0) then
          if (abs(amod(r4a00a(i001),2.0)).lt.r4eps) goto 101
          if (r8a00a(1).gt.0) then
            i4a00a(i001)=i4a00b(i001)+i4a00c(i001)
            i4s001 = i4s001 + i4a00a(i001)
          endif
101       continue
          if (mod(i001,2).ne.0) goto 102
        endif
102     if (mod(i001,2).eq.0) goto 103
        r4a00c(i001)=real(i001+i4a00a(i001))
        i4s002 = i4s002 + int(r4a00a(i001))
        if (r4a00c(i001).eq.r4a00c(i001)) then
          r4a00c(i001)=r4a00c(i001)-1
        endif
103   continue
100   continue
      write(6,*) '## ##'
      write(6,900) i4s001,i4s002,i4s003
900   format(1h0,i10)
901   format(1h0,5i10)
      write(6,901) i4a00a,i4a00b,i4a00c
      write(6,920) r4a00a,r4a00b,r4a00c
      write(6,920) r8a00a,r8a00b,r8a00c
920   format(1h0,5f12.4)
      stop
      end
