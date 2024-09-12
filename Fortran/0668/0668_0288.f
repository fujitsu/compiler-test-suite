      program main
      integer*4  is,i4a(10),n
      real*4     rs,r4a(10)
      real*8     ds,r8a(10)
      logical*4  ls,l4a(10)
      data l4a / .false., .true.,  .true.,  .true.,  .false.,
     *            .true., .false., .false., .false., .true.  /
      i=1
   10 i4a(i) = i * 3   + 1
      r4a(i) = i * 3.0 + 1.0
      r8a(i) = i * 4.0 + 1.25
      i=i+1
      if(i.le.10 ) goto 10
      n = 3
      do 20 i=1,n
          is = i4a(i)
          rs = r4a(i)
          ds = r8a(i)
          ls = l4a(i)
   20 continue
      if( is.ne. 10     ) write(6,100)
      if( rs.ne. 10.0   ) write(6,110)
      if( ds.ne. 13.25  ) write(6,120)
      if( .not.ls )       write(6,130)
      write(6,9999)
      stop
  100 format(1h ,'**** ng **** i4')
  110 format(1h ,'**** ng **** r4')
  120 format(1h ,'**** ng **** r8')
  130 format(1h ,'**** ng **** l4')
 9999 format(1h ,'>>>> ok <<<<')
      end
