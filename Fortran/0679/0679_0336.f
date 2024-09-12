      dimension a(10),b(10),c(10)
      data b/10*1.0/,c/10*2.0/,x/4.5/,y/5.5/
      do 10 i=1,10
        if ( x .gt. 5.0  .and. y .gt. 6.0 ) then
          a(i) = b(i)
        else
          a(i) = c(i)
        endif
  10  continue
      write(6,*) a
      stop
      end
