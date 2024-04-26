*
      program main
      dimension dim(100)
      dimension idim(100)
      parameter( acon=10)
      parameter( bcon=1 )
      parameter( ccon=2 )
      parameter( dcon=3 )
      parameter( econ=4 )
      parameter( icon=3 )
      parameter( jcon=6 )
      parameter( kcon=7 )
      parameter( lcon=8 )
      parameter( mcon=9 )
      call sub(dim,idim)
      do 10 i=1,100
        t     =dim(i)
        t     =t     + acon
        t     =t     - bcon
        t     =t     **ccon
        t     =t     * dcon
        t     =t     / econ
        dim(i)=t
10    continue
      do 20 i=1,100
        it    =idim(i)
        it    =it    **icon
        it    =it    + jcon
        it    =it    - kcon
        it    =it    * lcon
        it    =it    / mcon
       idim(i)=it
20    continue
      call check(dim,idim)
      write(6,*) ' ***** ok ***** '
      stop
      end
      subroutine sub(dim,idim)
      dimension      dim(100),idim(100)
      do 10 i=1,100
        dim(i) = i
        idim(i)= i
10    continue
      return
      end
      subroutine check(dim,idim)
      dimension        dim(100),idim(100)
      dimension        ans(100),ians(100)
      data  ans/10*75,10*300,10*675,10*1200,10*1875,10*2700,
     *          10*3675,10*4800,10*6075,10*7500/
      data ians/10*0,10*1182,  10*8231,   10*26480,
     *          10*61262,    10*117911,
     *          10*201760,    10*318142,
     *          10*472391,   10*669840    /
      do 1 i=1,100,10
        if( abs( (dim(i)-ans(i))/dim(i) ) .ge. 0.01 ) then
          write(6,*) ' ***** ng.1 ***** '
          stop
        endif
        if( idim(i) .ne. ians(i) ) then
          write(6,*) ' ***** ng.2 ***** ',i
          write(6,*) ' fort77 ',ians(i)
          write(6,*) ' 77ex   ',idim(i)
          stop
        endif
1     continue
      return
      end
