      program main
      character*10 c/'ok'/
      character*10 data(10)
      data data/'ab','be','c3','df','efs','fes','gec','hs','i','jj'/
      integer ptr(255)/255*0/
      integer f,search
      do 1 i=1,10
        n=f(data(i))
        if( ptr(n) .eq. 0 ) then
          ptr(n)=i
        else
        endif
1     continue
      if( data(search('ab        ',ptr,data)).ne.'ab' ) c='ng1'
      if( search('sfe       ',ptr,data) .ne.0 ) c = 'ng2'
      write(6,*) '********* '//c//' *********'
      stop
      end
      integer function f(a)
      character*(*) a
      n=0
      do 1 i=1,len(a)
        n=n+ichar(a(i:i))
1     continue
      f=mod(n,255)+1
      return
      end
      integer function search(c,ptr,data)
      character*(*) c
      character*10 data(10)
      integer ptr(255)
      integer f
      n=f(c)
      i=ptr(n)
      if( i.eq.0 ) then
        search=0
      else if( data(i).eq. c ) then
        search=i
      else
        search=0
      endif
      return
      end
