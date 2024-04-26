      program main
      call sub(i,j)
      call sub(i,j)
      call sub(i,j)
      call sub(i,j)
      if( i.eq.40 .and. j.eq.41 ) then
        write(6,*) ' 0k '
      else
        write(6,*) ' ng '
        write(6,*) i,j
      endif
      stop
      end
      subroutine sub(i,j)
      integer s/1/
      save    i1
      data    i1/0/
      do 10 i=1,10
        s=s+1
        i1=i1+1
 10   continue
      i=i1
      j=s
      return
      end
