      program main
      integer * 4 rr(10)
      logical * 4 l4a(20),l4b(20)
      integer * 4 i4a(20,20),i4b(20,20),i4c(20,20)
      real * 4    r4a(20,20),r4b(20,20),r4c(20,20)
      real * 8    r8a(20,20),r8b(20,20),r8c(20,20)
      data s1,s2/0.,0./
      data rr/5.,10.,16.,1.,4.,8.,9.,17.,6.,7./
      common /com1/l4a,l4b,l4c
      common /com2/i4a,i4b,i4c
      common /com3/r4a,r4b,r4c
      common /com4/r8a,r8b,r8c
      call init(20)
      do 100 i=1,10
        do 101 j=1,i
          s1=i4c(j,i)+j
          do 102 k=1,i+j
            if (i.gt.0) then
              if (l4a(k)) then
                i4a(k,j)=i4b(j,k)+k+j
                r8a(k,j)=max(r8b(k,j),k)+k
              endif
              if (i.lt.100) then
                i4b(k,j)=1
              endif
              if (s1.ne.0)  then
                s1=0
              endif
              s2  = i4b(k,j)+i4a(k,j)
            else
              if (l4a(k)) then
                i4a(k,j)=i4b(j,k)+k+j
                r8a(k,j)=max(r8b(k,j),k)+k
              endif
              if (i.lt.100) then
                i4b(k,j)=1
              endif
              s2  = i4b(k,j)-i4a(k,j)
            endif
102       continue
          ss=0.
101     continue
100   continue
      write(6,*) '## no.1 ##'
      write(6,*) s1,s2
      write(6,*) i4a,i4b,i4c
      write(6,*) r4a,r4b,r4c
      write(6,*) r8a,r8b,r8c
      call init(20)
      do 200 i=1,10
        if (l4a(i)) then
          do 201 j=1,int(rr(i))+1
            if (l4b(j).and.i4a(j,i).gt.0) then
              i4a(j,i)=i4a(j,i)+1
              r4a(j,i)=r4a(j,i)+1.
              r8a(j,i)=r8a(j,i)+1.
            endif
201       continue
        endif
200   continue
      write(6,*) '## no.2 ##'
      write(6,*) i4a
      write(6,*) r4a
      write(6,*) r8a
      stop
      end
      subroutine init(m)
      logical * 4 l4a(20),l4b(20)
      integer * 4 i4a(20,20),i4b(20,20),i4c(20,20)
      real * 4    r4a(20,20),r4b(20,20),r4c(20,20)
      real * 8    r8a(20,20),r8b(20,20),r8c(20,20)
      common /com1/l4a,l4b,l4c
      common /com2/i4a,i4b,i4c
      common /com3/r4a,r4b,r4c
      common /com4/r8a,r8b,r8c
      do 1 i=1,m
      do 1 j=1,m
       l4a(j)=.true.
       l4b(j)=.false.
       i4a(i,j)=i
       i4b(i,j)=i4a(i,j)+1
       i4c(i,j)=i4b(i,j)+1+1
       r4a(i,j)=real(i)+1
       r4b(i,j)=i4b(i,j)+1.
       r4c(i,j)=r4a(i,j)+i4a(i,j)
       r8a(i,j)=1.
       r8b(i,j)=real(i4a(i,j))
       r8c(i,j)=r8b(i,j)+1
1     continue
      do 2 i=2,m,2
      do 2 j=2,m,2
       l4a(j)=.false.
       l4b(j)=.true.
       i4a(i,j)=i+1
       i4b(i,j)=i4a(i,j)+1+1
       i4c(i,j)=i4b(i,j)+1+1+1
       r4a(i,j)=real(i)+1
       r4b(i,j)=i4b(i,j)+1.+1.
       r4c(i,j)=r4a(i,j)+i4a(i,j)+1.
       r8a(i,j)=2.
       r8b(i,j)=real(i4a(i,j))+2.
       r8c(i,j)=r8b(i,j)-1
2     continue
      return
      end
