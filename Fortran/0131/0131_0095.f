      program main
      dimension a(50,50)
      character*100 char
      character*1000 charl
      charl = 'long'
      char  = 'short message'//5h      //' abc '
      i=5
      j=1
10    continue
        i=i+1
20    continue
        j=j+1
      if(i.le.10) goto 10
        j=j+1
        a(i,j)=j*i
        i=i+1
      if(j.le.10) goto 20
      i=i+1
      j=j+1
      do 1 k=1,1000
        charl(k:k) = char(mod(k,100)+1:mod(k,100)+1)
1     continue
c
      if( i.eq.15 .and. j.eq.13 .and.
     +            charl(k-500:k-495) .eq. 'hort m' ) then
        print *,' ********* ok *********'
        call sub1(charl,a,'abcdefgh')
      else
        print *,' ********* ng *********'
      endif
      stop
      end
      subroutine sub1(char,dim,c8)
      character*(*) char
      character*(*) c8
      character*1   cfun
      dimension dim(2500)
      real*8    r8d(2500)
      do 100 k=1,2500,2
        dim(k) = 0.
        r8d(k) = 0.
100   continue
      do 101 k=2,2500,2
        dim(k) = 0.
        r8d(k) = 0.
101   continue
      do 1 i=1,len(char)
        r8d(i) = ichar( char( i:i ) )
        if( r8d(i) .eq. ichar( ' ' ) )      r8d(i) = 0.
1     continue
      j=0
      do 2 i=1,len(char)
        if( j .eq. 0 ) then
          if( r8d(i) .ne. 0 ) then
            do 3 k=1,len(c8)
              if( c8(k:k).eq.cfun(r8d(i)))then
                dim(ichar(c8(k:k))) = dim(ichar(c8(k:k))) + 1.
              endif
3           continue
          endif
        endif
2     continue
      if( dim(ichar('a')) .eq. 2*10 .and.
     +    dim(ichar('e')) .eq. 2*10         )
     +  write(6,*) ' ***** ok.2 ***** '
      return
      end
      character*1 function cfun(r)
      real*8 r
      cfun = char(int(r))
      return
      end
