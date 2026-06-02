      call aaaaa
      print *,'pass' 
      end
      subroutine aaaaa
      character*0 a(0,0),b(0,0)
      a='a'
      b='b'
      call sub(a,b)
      if(len(a).ne.0) print *,'fail'
      if(len(a).ne.len(b)) print *,'fail'
      if(size(scan(a,b)).ne.0)   print *,'fail'
      if(size(adjustl(a)).ne.0) print *,'fail'
      if(size(adjustl(a)).ne.size(adjustr(b))) print *,'fail'
      if(size(len_trim(a)).ne.0)  print *,'fail'
      if(size(index(a,b)).ne.0) print *,'fail'
      if(size(index(a,'a')).ne.0) print *,'fail'
      if(size(verify(a,b)).ne.0) print *,'fail'
      if(size(lle(a,b)).ne.0) print *,'fail'
      if(size(llt(a,b)).ne.0) print *,'fail'
      if(size(lge(a,b)).ne.0) print *,'fail'
      if(size(lgt(a,b)).ne.0) print *,'fail'
      contains
      subroutine sub(x,y)
      character*(*) x(:,:),y(:,:)
      if(len(x).ne.0) print *,'fail'
      if(len(x//y).ne.0) print *,'fail'
      if(len(x).ne.len(y)) print *,'fail'
      if(size(scan(x,y)).ne.0)   print *,'fail'
      if(size(adjustl(x)).ne.0) print *,'fail'
      if(size(adjustl(x)).ne.size(adjustr(b))) print *,'fail'
      if(size(len_trim(x)).ne.0)  print *,'fail'
      if(size(index(x,y)).ne.0) print *,'fail'
      if(size(index(x,'a')).ne.0) print *,'fail'
      if(size(verify(x,y)).ne.0) print *,'fail'
      if(size(lle(x,y)).ne.0) print *,'fail'
      if(size(llt(x,y)).ne.0) print *,'fail'
      if(size(lge(x,y)).ne.0) print *,'fail'
      if(size(lgt(x,y)).ne.0) print *,'fail'
      end subroutine
      end
