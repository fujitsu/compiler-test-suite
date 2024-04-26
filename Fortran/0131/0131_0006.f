
      integer*4  i, j, sum
      integer*4  m1(30),m2(30,30),m3(30,30,30)
      character  str1*32767, str2*32767, str3*32767, num*10
      integer*4  ans( 10), cal( 10), nn
      data ans  / 60,330,1260,  1,  0,  0,  0,  0,  0,  0/
      parameter (nn=4)
      data num  /'0123456789'/

      do 1 i=1, 30
        m1(i)=i
        do 1 j=1, 30
          m2(j,i)=i+j
          do 1 k=1, 30
            m3(k,j,i)=i+j+k
    1 continue
      str1=' '
      str2=str1(1:1)
      do 2 i=1, 32767
         j=mod(i,10)+1
         k=mod((i+9)/10,10)+1
         str1(i:i)=num(j:j)
         str2(i:i)=num(k:k)
    2 continue

      sum=0
      do 100 i=1, 10
         if (i*2.eq.2.or.i.eq.3.or.i*2.eq.10.or.
     1       i.eq.7.or.i*2.eq.18)  goto 100
         sum=sum+i*2
  100 continue
      cal(1)=sum

      sum=0
      do 200 i=1, 10
        l1=m1(i)
        do 200 j=1, 10
          l2=m2(j,i)
          do 200 k=1, 10
            l3=m3(k,j,i)
            if (i.gt.j.or.j.gt.k) goto 200
            if (str1(i:j).ne.str2(j*10:k*10)) goto 200
            sum=sum+l1+l2+l3
  200 continue
      cal(2)=sum

      sum=0
      do 300 i=1, 10
      do 300 j=i, i+10
      do 300 k=j, j+10
         if (str1(i:i+i).ne.str1(j:j+i)) goto 300
         if (str1(j:j+i).ne.str1(k:k+i)) goto 300
         sum=sum+m3(i,j,k)
  300 continue
      cal(3)=sum

      sum=0
      do 400 i=1, 10
         str3(i:i+9)=str2(i*10-9:i*10)
  400 continue
      if (str3(1:19).eq.'1234567890000000000') sum=1
      cal(4)=sum

      do 10 i=1, nn
         if (cal(i).eq.ans(i)) then
            print *, '  ', i, ':   *** ok ***'
         else
            print *, '  ', i, ':   *** ng ***'
            print *, '      cal = ', cal(i)
            print *, '      ans = ', ans(i)
         endif
   10 continue

      stop
      end
