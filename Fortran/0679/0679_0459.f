      dimension a(10),b(10),c(10),d(10),e(10),f(10)
      logical*4 lb(10)
      data b/10*1.0/,c/10*2.0/,d/10*3.0/,e/10*4.0/
      data lb/5*.true.,5*.false./
      do 10 i=1,10
      if ( lb(i) ) then
      a(i) = (b(i) + c(i) - d(i)) * e(i)
      f(i) = a(i) * 2.0 / 3.0
      else
      a(i) = b(i) + c(i) + d(i) + e(i)
      f(i) = a(i) / 2.0
      endif
  10  continue
      write(6,*) a  , f
      stop
      end
