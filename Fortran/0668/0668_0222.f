      program main
      real*4       ra1(100),rb1(100),rc1(100)
      real*8       da1(100),db1(100)
      character*10 str1(100),str2(100)
      logical*4    la1(100)
      data   str2/100*'abcdefghij'/,k/0/
      parameter(ra0=z'42018000',n=100)
      do 1 i=1,n/2
         ra1(i)    = float(k)
         ra1(50+i) = ra1(i)
         rb1(i)    = tan(float(i))
         rb1(50+i) = tan(float(50+i))
         da1(i)    = dble(ra1(i))
         da1(50+i) = da1(i)
         db1(i)    = dlog(dfloat(i))
         db1(50+i) = dlog(dfloat(50+i))
    1 continue
      do 10 i=1,100
         k = k + 1
         ra1(k)  = ra1(k) + rb1(k)
         rc1(k)  = ra1(k) + rb1(k)
         str1(i) = str2(i)
   10 continue
      do 20 i=1,n,2
         ra1(k)  = ra1(k) + rb1(k)
         k = k - 1
         rc1(k)  = ra1(k) + rb1(k)
         la1(i)  = str1(i) .lt. str2(i)
   20 continue
      do 30 i=n,1,-1
         da1(i) = da1(i) + db1(i)
         la1(i) = str1(i) .le. str2(i)
         if(la1(i)) then
            da1(i) = da1(i) + dfloat(i)
            db1(i) = db1(i) / dfloat(i)
         endif
   30 continue
      do 40 i=1,n/2,3
         da1(i) = da1(i) + db1(i)
         ra1(i) = ra1(i) + rb1(i)
         la1(i) = str1(i) .eq. str2(i)
         if(la1(i).and.(da1(i).eq.ra1(i))) then
            da1(i) = da1(i) + dfloat(n)
            db1(i) = db1(i) / dfloat(n)
         endif
   40 continue
      do 50 i=1,n
         la1(i) = str1(i) .ge. str2(i)
   50 continue
      do 60 i=1,n
         la1(i) = str1(i) .gt. str2(i)
         if(la1(i)) la1(i) = .not. la1(i)
   60 continue
      do 70 i=1,n
         la1(i) = str1(i) .ne. str2(i)
         if(la1(i)) la1(i) = .not.la1(i)
   70 continue
      do 80 i=1,n
         da1(i) = ra1(i) * ra0
         db1(i) = db1(i) + ra0
         rc1(i) = db1(i) - rb1(i)
   80 continue
      write(6,100) ra1,rb1,rc1
      write(6,200) da1,db1
      write(6,300) str1,str2
      write(6,400) la1
  100 format(1h ,10f7.1)
  200 format(1h ,10f7.2)
  300 format(1h ,5a15)
  400 format(1h ,15l5)
      stop
      end
