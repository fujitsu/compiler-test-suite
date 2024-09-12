      integer dsrn
      character dsn*11/'test057.01'/,acc*10/'sequential'/
      character form*11/'unformatted'/,stat*3/'new'/
      dimension ia(210),ib(210),ic(15),id(15),ie(10),if(10)
      item=1
      dsrn=1
      do 10 i=1,210
         ia(i)=i+dsrn-1
         ib(i)=0
   10 continue
      open(unit=dsrn,file=dsn,access=acc,status=stat,form=form)
      k=0
      do 20 j=1,20
         write(dsrn) (ia(i+k),i=1,j)
         k=k+j
   20 continue
      endfile dsrn
      k=0
      do 30 j=1,20
      l=20-j+1
      k=k+l
      backspace dsrn
      backspace dsrn
      read(dsrn) (ib(k-i+1),i=1,l)
   30 continue
      backspace dsrn
      do 40 j=1,210
         if(ib(j) .ne. 210-j+dsrn) then
         write(6,111) item,ib
         stop 1
         endif
   40 continue
      write(6,222) item
      item=item+1
      k=0
      do 50 j=1,20
         read(dsrn) (ib(i+k),i=1,j)
         k=k+j
   50 continue
      do 60 j=1,210
         if(ib(j) .ne. j+dsrn-1) then
         write(6,111) item,ib
         stop 2
         endif
   60 continue
      write(6,222) item
      item=item+1
      do 70 l=1,19
         rewind dsrn
         l1=l+1
         k=0
         do 80 j=1,l
            read(dsrn)
            k=k+j
   80    continue
         l2=(l+1)/2
         do 90 j=l1,20
            do 100 i=1,l2
               ib(i+k)=0
  100       continue
            read(dsrn) (ib(i+k),i=1,l2)
            k=k+j
   90    continue
         do 110 j=1,210
            if(ib(j) .ne. j+dsrn-1) then
            write(6,111) item,ib
            stop 3
            endif
  110    continue
   70 continue
      write(6,222) item
      close(unit=dsrn,status='delete')
      open(unit=dsrn)
      item=item+1
      do 120 j=1,15
         ic(j)=j+dsrn-1
  120 continue
      do 130 l=1,14
         rewind dsrn
         l1=l+1
         do 140 j=1,l
            write(dsrn,'(i10)') ic(j)
  140    continue
         rewind dsrn
         do 150 j=1,l
            read(dsrn,'(i10)') id(j)
  150    continue
         do 160 j=l1,15
            write(dsrn,'(i10)') ic(j)
  160    continue
         rewind dsrn
         do 170 j=1,15
            read(dsrn,'(i10)') id(j)
            if(id(j) .ne. j+dsrn-1) then
            write(6,333) item,id
            stop 4
            endif
  170    continue
  130 continue
      write(6,222)item
      close(unit=dsrn)
      unit=2
      open(unit=dsrn,form='unformatted')
      item=item+1
      do 180 l=1,14
         l1=l+1
         rewind dsrn
         do 190 j=1,l
            write(dsrn) ic(j)
  190    continue
         rewind dsrn
         do 200 j=1,l
            read(dsrn)
  200    continue
         do 210 j=l1,15
         write(dsrn) ic(j)
  210    continue
         rewind dsrn
         do 220 j=1,15
            read(dsrn) id(j)
  220    continue
         do 230 j=1,15
            if(id(j) .ne. j+dsrn-1) then
            write(6,333) item,id
            stop 5
            endif
  230    continue
  180 continue
      write(6,222) item
      close(unit=dsrn)
      item=item+1
      do 240 i=1,10
         ie(i)=i+dsrn-1
         if(i)=0
  240 continue
      open(unit=dsrn,file='test057.f01',status='new',
     *     form='unformatted')
      rewind dsrn
      do 250 j=1,10
         write(dsrn) ie(j)
  250 continue
      backspace dsrn
      backspace dsrn
      endfile dsrn
      rewind dsrn
      do 260 j=1,10
         read(dsrn,end=270) if(j)
  260 continue
      write(6,444) item,if
      stop 6
  270 continue
      backspace dsrn
      do 280 j=9,10
         write(dsrn) ie(j)
  280 continue
      rewind dsrn
      do 290 j=1,10
         read(dsrn,end=300) if(j)
         if(if(j) .ne. j+dsrn-1) then
         write(6,444) item,if
         stop 7
         endif
  290 continue
      goto 310
  300 write(6,444) item,if
      stop 8
  310 continue
      close(unit=dsrn,status='delete')
      stop '*** test end ***'
  111 format(1h ,9x,'item(',i2,') *** error ***',/(1h ,9x,30i4))
  222 format(1h ,9x,'item(',i2,') *** ok ***')
  333 format(1h ,9x,'item(',i2,') *** error ***',/(1h ,9x,15i4))
  444 format(1h ,9x,'item(',i2,') *** error ***',/(1h ,9x,10i4))
      end
