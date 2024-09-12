      write (6,10)
   10 format(1h1,5x,'                 test ... b0000440'/)
      ip = 0
      call f09201 (ip)
      call f09202 (ip)
      call f09203 (ip)
      call f09207 (ip)
      if (ip.ne.0 ) go to 30
      write ( 6,20 )
   20 format(21x,'b0000440',5x,'ok')
30    write (6 ,40 )
   40 format(1h0,5x,'end run unit')
      stop
      end
      subroutine f09201 (ip)
      implicit real*8(t)
      character*12 form8
      character*2  t8099(3,3,3,3,3,3,3),t8199(3,3,3,3,3,3,3)
      data t8099(1,1,1,1,1,1,1),t8099(2,2,2,2,2,2,2),t8099(3,3,3,3,3,3,3
     1)/ '11','12','13' /, k1,k2,k3,k4,k5,k6,k7,k8,k9,k10
     2 / 10,9,8,7,6,5,4,3,2,1 /
      common /label8/ form8
      iu2 =21
      open(21,access='direct',form='formatted',recl=10)
      j=1
      do 10 iu8=21,21
      write(iu8,form8,rec=(k1*(k2-k3*(k4-k5)**k7)-k8**(k9-k10)))
     e(t8099(i,i,i,i,i,i,i),i=1,3,j)
       read(iu8,form8,rec=(k1*(k2-k3*(k4-k5)**k7)-k8**(k9-k10)))
     e(t8199(i,i,i,i,i,i,i),i=1,3,j)
10    continue
150    if(t8099(1,1,1,1,1,1,1) .eq. t8199(1,1,1,1,1,1,1) .and.
     1 t8099(2,2,2,2,2,2,2) .eq. t8199(2,2,2,2,2,2,2) .and.
     e t8099(3,3,3,3,3,3,3) .eq. t8199(3,3,3,3,3,3,3) ) go to 30
      write(6,20)
      ip=ip+1
20    format(1h0,20x,'ihf09201',3x'ng' )
30    return
      e n d
      subroutine f09202 (ip)
      implicit logical(t,l),integer(r)
      equivalence  (i9099(1,1),i9299(1,1)) , (i9199(1,1),i9399(1,1))
      dimension  i9099(10,10),i9199(10,10),i9299(10,10),i9399(10,10)
      character*8 list
      do 11 i = 1,10,2
11    i9299(i,1) = i
      do 22 i=1,10,2
22    i9299(1,i) = i
      data
     e r9000 / 10/, k1,k2,k3,k4,k5,k6,k7,k8 /1,2,3,4,3,2,1,0 /
      iu=40
      data list/'(i05)'/
      open(40,access='direct',form='formatted',recl=200)
      write(iu,list,rec=(k1*k2**k3/ min0(k4,k5,k6)*k7**k8))
     1 (i9299(i1,1),i1=1,10,2 ), r9000, (i9299(1,i2),i2=1,10,2 )
      read (iu,list,rec=(k1*k2**k3/ min0(k4,k5,k6)*k7**k8))
     1 (i9399(j1,1),j1=1,10,2),r9100,(i9399(1,i2),i2=1,10,2)
      lx1 = .true.
      do 10 i=1,10,2
      lx1= lx1 .and.i9099(i,1) .eq. i9199(i,1)
10    continue
      lx2 = r9000 .eq. r9100
      lx3 = .true.
      do 20 i=1,10,2
      lx3 = lx3 .and. i9099(1,i) .eq. i9199(1,i)
20    continue
25    if(lx1.and.lx2.and.lx3) go to 40
      ip=ip+1
      write(6,30)
30    format(1h0,20x,'ihf09202',3x,'ng' )
      write(6,35)lx1,(i9099(i,1),i=1,10,2),(i9199(i,1),i=1,10,2),
     1 lx2,r9000,r9100,lx3,(i9099(1,i),i=1,10,2),(i9199(1,i),i=1,10,2)
   35 format(10x,l1,5i10/,11x,5i10//,10x,l1,2i10//,10x,l1,5i10/,11x,5i
     1 10)
40    return
      e n d
      subroutine f09203 (ip)
      iub=41
      call f09204 (iub,ip)
      return
      e n d
      subroutine f09204 (iuc,ip)
      implicit  logical(l)
      character*8   list
      common /labelc /rc020(20), rc120(20), rc220(20)
      data lx1,lx2 /2*.true. /,k1,k2,k3,k4,k5,k6,k7,k8,k9 / 9*2 /
      data list/'(e10.2)'/
      do 10 i=1,20
      rc020(i)=i
10    continue
      open(41,access='direct',form='formatted',recl=550)
      write (iuc,list,rec=(((k1)*(k2)+k3-(k4*(k5-k6)*k7)+k8)-k9))
     1 (rc020(i),i=1,5),rc020 ,(rc020(i),i=6,10)
      read (iuc,list,rec=(((k1)*(k2)+k3-(k4*(k5-k6)*k7)+k8)-k9))
     1 (rc120(i),i=1,5),rc220,(rc120(i),i=6,10)
      do 20 i=1,10
20    lx1 = lx1.and. rc020(i) .eq. rc120(i)
      do 25 i=1,20
      lx2 = lx2.and. rc020(i) .eq. rc220(i)
25    continue
30    if(lx1.and.lx2 )go to 50
      ip=ip+1
      write(6,40)
40    format(1h0,20x,'ihf09203',3x,'ng' )
50    return
      e n d
      subroutine f09207 (ip)
      implicit real*8(t)
      character*6 list,aaaaaa(2,2)
      common /labelf/ tf004 (2,2,1,1)
      character*6 tf004
      character*55 tf107
      data aaaaaa/'111111','222222','333333','444444'/
      data list/'(5a6)'/
      data tf107/'(''111111'',6h222222,6h333333,6h444444,6h555555)'/
      dimension if099(2,2,2,2,2,2,2)
      data if099(1,2,1,2,1,2,1),if099(2,1,2,1,2,1,2),if099(1,1,2,2,1,1,
     1 2), if099(2,2,1,1,2,2,1), if099(1,1,1,2,2,2,1) / 1,2,3,4,5 /
      open(60,access='direct',form='formatted',recl=200)
      call f09208 (iuf)
      write(iuf,tf107,rec=2)
100   read (iuf,list,rec=if099(1,2,1,2,1,2,1)+if099(1,1,2,2,1,1,2)*if099
     1(2,2,1,1,2,2,1)/ if099(2,1,2,1,2,1,2)- if099(1,1,1,2,2,2,1))
     2     (( tf004(i,j,1,1),i=1,2),j=1,2)
      do 10 j=1,2
      do 10 i=1,2
      if(tf004(i,j,1,1).eq.aaaaaa(i,j)) go to 10
      ip=ip+1
      write(6,111)
111   format(1h0,20x,'ihf09205',3x,'ng')
   10 continue
200   return
      e n d
      subroutine f09208 (iug )
      iug=60
      return
      e n d
      block data
      character*12 form8
      common /label8/form8
      data form8/'(a2)'/
      end
