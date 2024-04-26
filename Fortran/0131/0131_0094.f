      program main
      dimension dim(50,50,50)
      dimension idim(50,50,50)
      integer i,j,k
      call init(dim,idim)
      do 1 i=1,50
        do 1 j=1,50
          do 1 k=1,50
            if( dim(i,j,k) .ne. 1. .or. idim(k,i,j) .ne. 1 ) then
              write(6,*) ' ***** ng ***** '
              stop
            endif
1     continue
      write(6,*) ' ***** ok ***** '
      stop
      end
      subroutine init(dim,idim)
      dimension dim(50,50,50)
      dimension idim(50,50,50)
      dimension adim(50,50,50)
      dimension jdim(50,50,50)
      character*50 c
      call sub(adim,jdim)
      do 1 i=1,50
        do 1 j=1,50
          c = 'window'
          do 1 k=1,50
            dim(j,k,i)=adim(i,j,k)
1     continue
      if( c .ne. 'window' ) then
        write(6,*) ' ***** ng ***** '
      endif
      do 2 i=1,50
        do 2 j=1,50
          do 2 k=1,50
            idim(k,i,j)=jdim(i,k,j)
2     continue
      return
      end
      subroutine sub(dim,idim)
      dimension dim(50,50,50)
      dimension idim(50,50,50)
      real func
      real func1
      character*50 c
      do 1 i=1,50
        do 1 j=1,50
          do 1 k=1,50
            c='windows'
            dim(k,j,i)=func()+0.5
1     continue
      if( func1('windows') .eq. 0.5 ) then
      else
        write(6,*) ' ***** ***** '
        stop
      endif
      do 2 i=1,50
        do 2 j=1,50
          do 2 k=1,50
            idim(i,j,k) = dim(i,j,k)
2     continue
      return
      end
      real function func()
      func=0.5
      return
      end
      real function func1(c)
      character*(*)      c
      character*1000     c1
      j=1
      do 1 i=1,1000
        c1(j:1000)=c(1:len(c)-1)
        j=j+1
1     continue
      func1=ichar('w')-ichar(c1(1000:1000))+0.5
      return
      end
