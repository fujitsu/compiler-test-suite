*
       integer    i,j
       integer*1  i1,  i1dim(10)
       integer*2  i2,  i2dim(10)
       integer*4  i4,  i4dim(10)
       integer*4  i8,  i8dim(10)
       real*4     r4,  r4dim(10)
       real*8     r8,  r8dim(10)
       real*8    r16, r16dim(10)
       complex*8  p8,  p8dim(10)
       complex*16 p16, p16dim(10)
       complex*16 p32, p32dim(10)
*
       logical    l
       logical*1  l1dim(10)
       logical*4  l4dim(10)
*
       l = .true.
       j=1
*
       i  = j
       i1 = j
       i2 = j
       i4 = j
       i8 = j
*
       r   = j
       r4  = j
       r8  = j
       r16 = j
*
       p   = (1.,1.)
       p8  = (1.,1.)
       p16 = (1.,1.)
       p32 = (1.,1.)
*
       i1dim(1) = 1
       do 1 i=1,9
         i1dim( i+1 ) = i1dim( i ) + i1
   1   continue
       if( i1dim(10) .ne. 10 ) l = .false.
       i2dim(1) = 1
       do 2 i=1,9
         i2dim( i+1 ) = i2dim( i ) + i2
   2   continue
       if( i2dim(10) .ne. 10 ) l = .false.
       i4dim(1) = 1
       do 3 i=1,9
         i4dim( i+1 ) = i4dim( i ) + i4
   3   continue
       if( i4dim(10) .ne. 10 ) l = .false.
       i8dim(1) = 1
       do 4 i=1,9
         i8dim( i+1 ) = i8dim( i ) + i8
   4   continue
       if( i8dim(10) .ne. 10 ) l = .false.
       r4dim(1) = 1.0
       do 5 i=1,9
         r4dim( i+1 ) = r4dim( i ) + r4
   5   continue
       if( r4dim(10) .ne. 10.) l = .false.
       r8dim(1) = 1.0
       do 6 i=1,9
         r8dim( i+1 ) = r8dim( i ) + r8
   6   continue
       if( r8dim(10) .ne. 10.) l = .false.
       r16dim(1) = 1.0
       do 7 i=1,9
         r16dim(i+1 ) = r16dim(i ) + r16
   7   continue
       if( r16dim(10) .ne. 10.) l = .false.
       p8dim(1) = (1.0,1.0)
       do 8 i=1,9
         p8dim( i+1 ) = p8dim( i ) + p8
   8   continue
       if( p8dim(10) .ne. (10.0,10.0) ) l = .false.
       p16dim(1) = (1.0,1.0)
       do 9 i=1,9
         p16dim(i+1 ) = p16dim(i ) + p16
   9   continue
       if( p16dim(10) .ne. (10.0,10.0) ) l = .false.
       p32dim(1) = (1.0,1.0)
       do 10 i=1,9
         p32dim(i+1 ) = p32dim(i ) + p32
  10   continue
       if( p32dim(10) .ne. (10.0,10.0) ) l = .false.
       l1dim(1) = .true.
       do 11 i=1,9
         l1dim( i+1 ) = .not.l1dim(i)
  11   continue
       if( l1dim(10) ) l = .false.
       l4dim(1) = .true.
       do 12 i=1,9
         l4dim( i+1 ) = .not.l4dim(i)
  12   continue
       if( l4dim(10) ) l = .false.
*
       if( l ) then
         write(6,*) ' ******* ok ******'
       else
         write(6,*) ' ******* ng ******'
       endif
       stop
       end
