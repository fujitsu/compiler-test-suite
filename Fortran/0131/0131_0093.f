      program main
      logical logic
      integer p
      integer j
      integer ans(21)
      data ans/5,2,5,5,7237,5,5,-3,5,5,5,5,5,5,5,5,5,5,5,5,5/
      integer i1(10),i2(-1:10),i3(-5:1),i4(0:20)
      equivalence (i1(2),i2(1)),(i2(4),i3(1))
      equivalence (i1(1),i4(0))
      equivalence (i2(7),j)
      integer eq1,eq2,eq3,eq4
      equivalence (eq1,eq2)
      equivalence (eq1,eq3)
      equivalence (eq1,eq4)
*
      integer comi1,comi2,k,l
      common /com/comi1(-5:5),comi2(2),k
      equivalence (comi1(0),l)
      integer reci1(5)
      equivalence (l,reci1(1))
      equivalence (reci1(5),n)
*
      real*4  r41,r42,r43
      real*8  r81,r82,r83
      real*8 r61,r62,r63
      write(6,*) ' ******* start ********'
*
      p=loc(i2(-1))
      if( loc( i1(4) ) .ne. loc( i3(0) ) .or.
     +    loc( l )     .ne. loc( n ) - 4*4     ) then
        write(6,*) ' **** ng .1 ******'
        stop
      endif
      comi1(0) = 12345
      call cchk( comi1(0) )
      call defl( int(loc(l)) )
      do 1 i=0,20
        i4(i)=l
1     continue
      call defn
      r81=0.0
      do 2 i=-5,5,1
        comi1(i)=sin(r81*j)*n
        r81=r81+0.3
2     continue
      if( n.ne.803 ) then
        write(6,*) ' ***** ng.5 ******'
      endif
      logic = .false.
      do 3 j=n*9,1,-5
        i=i1(max(-5,min(j,10)))
        i4(4)=i+i2(4)
        if( i2(1).eq.i1(2) ) then
          if( i1(8).eq.j ) then
            logic = .true.
          endif
        endif
        if( logic ) then
          do 4 i=-5,0,1
            i3(i)=i1(i+10)
4         continue
        endif
3     continue
      if( .not.logic ) then
        write(6,*) ' ****** ng.7 ******* '
      endif
      r61=r81
      r62=r81
      r63=r81
      r42=0.0
      do 5 r82=r61,r62,1.0
        r41=cos(r82)+r63
        r83=sin(r82)
        r42=r42+1.0
        r43=r42
5     continue
      i=r41
      if( r42.ne.1.0 .or. i.ne.2 ) then
        write(6,*) ' ******* ng.6 ******'
        stop
      endif
      do 6 i=1,21
        if( ans(i).ne.i4(i-1) ) then
          write(6,*) ' ******* ng.7 ********'
          stop
        endif
6     continue
      write(6,*) ' ******* ok.   ********'
      stop
      end
      subroutine defl(i)
      integer comi1,comi2,k
      common /com/comi1(-5:5),comi2(2),k
      if( i.ne. int(loc(comi1(0))) ) then
        write(6,*) ' ****** ng.2 ***** '
        stop
      endif
      comi1(0)=5
      return
      end
      subroutine defn
      integer comi1,comi2,k
      common /com/comi1(-5:5),comi2(2),k
      comi1(4)=1000
      return
      end
      subroutine cchk(i)
      integer comi1,comi2,k,i
      common /com/comi1(-5:5),comi2(2),k
      if( comi1(0) .ne. i ) then
        write(6,*) ' ******* ng.10 ****** '
        stop
      endif
      return
      end
