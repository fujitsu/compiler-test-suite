      subroutine sub(o,r)
      integer,optional,dimension(10) ::o
      integer :: r
      integer,save :: sum
      do i=1,10
        if( present(o) ) then
          sum = sum + o(i)
        end if
      enddo
      if( .not.present(o) ) then
          sum = 10
      end if
      r = sum
      end
      interface 
        subroutine sub(area,result)
          integer,optional,dimension(10) ::area
          integer ::result
	end
      end interface
      integer,dimension(10):: j
      integer     :: sum
      sum=0
      do i=1,10
	j(i)=i
      enddo
      print *,'call sub 1st'
      call sub(result=sum)
      print *,sum
      print *,'call sub 2nd'
      call sub(j,result=sum)
      print *,sum
      end
