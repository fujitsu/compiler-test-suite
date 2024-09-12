      program main
      integer i,j,of0
      integer*8  p
      pointer(p, of0)
      integer a(10)
      p=loc(i)
      i=0
      do 1 j=1,10
        a(j)=i
        i=i+1
        of0=of0-1
  1   continue
      do 2 i=1,10
        if( a(i).ne.0 ) then
          write(6,*) ' ********** ng ********** ',a(i)
          stop
        endif
  2   continue
      write(6,*) ' ******** ok ********** '
      stop
      end
