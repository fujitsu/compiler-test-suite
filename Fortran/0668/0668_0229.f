      data      n1/10/,n2/10/,n3/10/
      integer*4 i10(11),i11(10),i12(10,10),i13(1,1),i14(10,10),
     1          i15(10,11)
      logical*4 l10(10),l11(10),l12(10),ls10
      data      i10/1,2,3,4,5,6,7,8,9,10,11/,i11/10*0/,i12/50*1,50*2/,
     1          i13/0/,i14/10*1,10*2,10*3,10*4,10*5,50*6/
      data      l10/.true.,.false.,.true.,.false.,.true.,.false.,
     1              .true.,.false.,.true.,.false./
     2          l11/.true.,.true.,.false.,.false.,.false.,.true.,
     3              .true.,.true.,.false.,.false./
     4          ls10/.true./
      data      i10s/5/,i15/20*1,30*2,40*3,20*4/,
     1          l12/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./
      integer*4  i20(10)/10*0/,i21(10),i22(11)
      logical*4  l20(5),l21(10)
      real*8     q20(10,10)/100*0/,q21(10,10)
      data       i21/1,2,3,4,5,6,7,8,9,10/,i20s/0/,l20/5*.true./,
     1           i21s/5/
      data       q21/50*5.0,50*6.5/,i22s/0/,l21/5*.true.,5*.false./,
     1           i22/11*5/
      write(6,*) '***** *****'
      write(6,*) '----- test no.1 -----'
      do 100 i=1,n1
        do 10 j=1,n2
          i10(j+1) = i10(j)
          i11(j) = i10(j)/i12(j,i)
   10   continue
        i13(1,1) = i13(1,1) + i14(i,i)
        if (l10(i)) then
          l10(i) = l10(i) .and. l11(i)
        else
          l10(i) = l10(i) .or. ls10
        endif
        do 11 k=2,n3
          i15(k,i) = i10s
          is10 = i15(k,i+1)
   11     if ( l12(k)) l12(k) = .not. l12(k-1)
  100 continue
      write(6,*) 'i10 = ',i10
      write(6,*) 'i11 = ',i11
      write(6,*) 'i13 = ',i13
      write(6,*) 'l10 = ',l10
      write(6,*) 'i15 = ',i15
      write(6,*) 'is10 = ',is10
      write(6,*) 'l12 = ',l12
      write(6,*) '----- test no.2 -----'
      do 200 i=2,n1
        i20(i) = sqrt( float(i21(i)+i))
        i20s = i20(i) + i21(i) + i20s
        if ( l20(5) ) then
          i21s = max0(i21s,i20(i))
        endif
        do 20 j=1,n2
          q20(i,j) = q21(i,j)
          i22s = i22s + q20(i,j)
   20     i22s = i22s + i21(j)
        i23s = i21(i)
        if ( l21(i) ) then
          i23s = i21(i) + i
        else
          i22(i) = i23s
        endif
        i22(i-1) = i23s + min0(i23s,i22(i))
  200 continue
      write(6,*) 'i20  = ',i20
      write(6,*) 'i20s = ',i20s
      write(6,*) 'i21s = ',i21s
      write(6,*) 'q20  = ',q20
      write(6,*) 'i22s = ',i22s
      write(6,*) 'i22  = ',i22
      stop
      end
