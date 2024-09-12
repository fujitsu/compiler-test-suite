      program main
      parameter (n=100)
      integer i401(n,n),i402(n,n),i403(n,n),i404(n,n)
      integer i405(n,n),i406(n),i407(n,n),i408/0/
      integer list(n)
      logical l401(n,n),l402(n,n),l403/.true./
      data i406/100*2/,i401/10000*0/,i402/10000*1/
      data i407/10000*3/
      do 10 i=1,n,1
        list(i) = i
        do 10 j=1,n,1
          i403(i,j) = i
          i404(i,j) = j
          i405(i,j) = n
          m=i-98
          l401(i,j) = mod(i,3).eq.0
          l402(i,j) = btest(j,0)
   10 continue
      do 20 i=1,n,m
        do 20 j=1,n,m
          l = j
          if (i403(i,j).eq.j) then
            i401(i,j)=i402(i,m)+i402(m,j)
            i404(m,3) = (sin(real(i))+cos(real(i))) * 100
          else
            k = list(i)
            i405(l,k) = i402(k,2) * sin(real(i402(l,2)))
            i401(i,j) = mod(i405(l,list(k)),i402(l,l))
          endif
   20 continue
      write(6,*) ' ## ##'
      write(6,*)
      write(6,*) ' ### test 1 ###'
      write(6,*) ((i401(i,j),i=1,n,15),j=1,15)
      write(6,*) i404(m,3)
      write(6,*)
      do 30 i=1,n,list(2)
        do 30 j=1,n,i406(i)
          if (i402(i,j).ne.0) then
            i403(i,j) = iand(i401(list(i),list(j)),list(2))
            i405(list(i),list(j)) = sin(real(i401(list(j),list(i))))
     +       * 100 + cos(real(i401(list(i),list(i)))) * 50
          elseif (.false.) then
            i403(i,j) = ibset(i403(i,j),3) - list(i)
          endif
   30 continue
      write(6,*) ' ### test 2 ###'
      write(6,*) ((i403(i,j),i=1,n,15),j=1,n,10)
      write(6,*)
      write(6,*) ((i405(i,j),i=1,n,15),j=1,n,10)
      write(6,*)
      do 40 i=n,1,-1
        do 40 j=1,n,1
          k = n - j + 1
          if (i401(i,j).le.i402(i,j)) then
            i407(i,j) = i403(list(i),k) + i405(k,list(j))
            i406(j) = j
            if (l401(i,j).and.l402(i,j)) then
              i407(i,j) = i407(i,j) + i401(i406(j),list(i))
            else
              i407(i,j) = i407(i,j) - i402(list(k),i406(j))
            endif
          else
            if (l403) then
              i408 = i406(j) * i404(k,list(j))
            endif
          endif
   40 continue
      write(6,*) ' ### test 3 ###'
      write(6,*) ((i407(i,j),i=1,n,15),j=1,n,10)
      write(6,*) i408
      write(6,*)
      do 50 i=n,1,-1
        do 50 j=1,n,1
          k = i401(i,j) + i401(j,i) + i401(i,j) - i401(j,j)
     +      - list(i) + list(j) + list(2)
          if (i402(i,j).ne.0) then
            i403(i,j) = iand(i401(i,j),list(2)) - i403(i,j)
            i405(list(i),list(j)) = sin(real(i401(j,i)))
     +       * 100 + cos(real(i401(i,i))) * 50 - i401(j,j)
          else
            i403(i,j) = iand(i401(j,i),list(2)) + i403(i,j)
            i405(list(i),list(j)) = sin(real(i401(j,j)))
     +       * 100 + cos(real(i401(i,i))) * 60 * i401(i,j)
          endif
   50 continue
      write(6,*) ' ### test 4 ###'
      write(6,*) ((i403(i,j),i=1,n,15),j=1,n,10)
      write(6,*)
      write(6,*) ((i405(i,j),i=1,n,15),j=1,n,10)
      write(6,*)
      stop
      end
