      logical ll(10)
      do i=1,10,2
         ll(i) = .false.
         ll(i+1) = .true.
      enddo
      call sub1(ll)
      call sub2(ll)
      call sub3(ll,1,10)
      call sub4(ll,1,10)
      end

      subroutine sub1(ll)
      integer a(10)/10*0/,b(10)/10*0/
      integer resa(10)
      logical ll(10)
      data resa/0,0,0,5,0,7,0,9,0,11/

      do i=1,10
         b(i) = i
         if (i.gt.3.and.ll(i)) then
            a(i) = i + 1
         endif
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
 1100 continue
      end

      subroutine sub2(ll)
      integer a(10)/10*0/,b(10)/10*0/
      integer resa(10)
      logical ll(10)
      data resa/0,0,0,5,0,7,0,9,0,11/

      a = 0
      do i=1,10
         b(i) = i
         if (i .gt. 3.and.ll(i)) then
            a(i) = i + 1
         endif
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
 1100 continue
      end

      subroutine sub3(ll,n,m)
      integer a(10)/10*0/,b(10)/10*0/
      integer resa(10)
      logical ll(10)
      data resa/0,0,0,5,0,7,0,9,0,11/

      do i=n,m
         b(i) = i
         if (i .gt. 3.and.ll(i)) then
            a(i) = i + 1
         endif
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 3 ## "
      goto 1100
 199  write(6,*) " ## error 3 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
 1100 continue
      end

      subroutine sub4(ll,n,m)
      integer a(10)/10*0/,b(10)/10*0/
      integer resa(10)
      logical ll(10)
      data resa/0,0,0,5,0,7,0,9,0,11/

      a = 0
      do i=n,m
         b(i) = i
         if (i .gt. 3.and.ll(i)) then
            a(i) = i + 1
         endif
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 4 ## "
      goto 1100
 199  write(6,*) " ## error 4 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
 1100 continue
      end

