      program main
      integer i,j,l,flag
      integer dim(100)
      flag = 1
      l=0
      do i=1,100
        dim(i)=i
      enddo
      do i=1,100
        do j=1,100
          dim(j)=dim(j)+1
        enddo
        call child
        dim(i)=dim(i)-1
      enddo
      j=100
      do i=1,100
        if( dim(i).ne.j ) then
          write(6,*) ' ng ',dim(i),j
          flag=0
        endif
        j=j+1
      enddo
      if( l.eq. 5050 .and. flag == 1 ) then
        write(6,*) ' ********* ** ok *****'
      else
        write(6,*) ' ********* ** ng *****'
      endif

      contains
        subroutine child
        l=l+i
        end subroutine child
      end program main
