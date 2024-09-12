      program main
      real*4       a(1000,10),b(1000,10),c(1000,10),ng(1000,10)
      integer*4    count
      logical*4    l(1000,10)
      character*1  ch1(1000,10),ch2(1000,10)
      character*26 cset/26habcdefghijklmnopqrstuvwxyz/
      common /blk/count
      count=1
      k=1
      do 1 i=1,1000
      do 1 j=1,10
        m=mod(k,26) + 1
        ch1(i,j) = cset(m:m)
        k=k+1
    1 continue
      do 2 i=1,1000
      do 2 j=1,10
       ng(i,j) = 0.0
        a(i,j) = 0.0
        b(i,j) = 1.0
        c(i,j) = b(i,j)  + 1.0
        l(i,j) = .false.
        ch2(i,j) = 1hm
    2 continue
      do 3 i=1,1000
      do 3 j=1,10
        a(i,j) = a(i,j) + b(i,j) + c(i,j)
        b(i,j) = a(i,j) + b(i,j)
        c(i,j) = c(i,j) + a(i,j)
        l(i,j) = ch1(i,j) .eq. ch2(i,j)
    3 continue
      do 4 i=1,1000
      do 4 j=1,10
        a(i,j) = a(i,j) + b(i,j) + c(i,j)
        b(i,j) = a(i,j) + b(i,j)
        c(i,j) = c(i,j) + a(i,j)
        l(i,j) = l(i,j) .and. (ch1(i,j) .ne. ch2(i,j))
    4 continue
      do 5 i=1,1000
      do 5 j=1,10
        a(i,j) = a(i,j) + b(i,j) + c(i,j)
        b(i,j) = a(i,j) + b(i,j)
        c(i,j) = c(i,j) + a(i,j)
        l(i,j) = l(i,j) .and. (ch1(i,j) .lt. ch2(i,j))
    5 continue
      do 6 i=1,1000
      do 6 j=1,10
        a(i,j) = a(i,j) + b(i,j) + c(i,j)
        b(i,j) = a(i,j) + b(i,j)
        c(i,j) = c(i,j) + a(i,j)
        l(i,j) = l(i,j) .neqv. (ch1(i,j) .le. ch2(i,j))
    6 continue
      do 7 i=1,1000
      do 7 j=1,10
        a(i,j) = a(i,j) + b(i,j) + c(i,j)
        b(i,j) = a(i,j) + b(i,j)
        c(i,j) = c(i,j) + a(i,j)
        l(i,j) = l(i,j) .neqv. (ch1(i,j) .gt. ch2(i,j))
    7 continue
      do 8 i=1,1000
      do 8 j=1,10
        a(i,j) = a(i,j) + b(i,j) + c(i,j)
        b(i,j) = a(i,j) + b(i,j)
        c(i,j) = c(i,j) + a(i,j)
        l(i,j) = l(i,j) .neqv. (ch1(i,j) .ge. ch2(i,j))
    8 continue
      write(6,*) ' *** l *** ' , l
      write(6,*) ' *** a *** ' , a(1,1)
      write(6,*) ' *** b *** ' , b(1,1)
      write(6,*) ' *** c *** ' , c(1,1)
      do 9 i=2,999
      do 9 j=1,10
        call cnt
        ng(i,j) = count
    9 continue
      write(6,*) ng
      stop
      end
      subroutine cnt
      integer*4 count
      common /blk/count
      count=count+1
      return
      end
