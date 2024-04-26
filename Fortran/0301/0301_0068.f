      subroutine sub(a)
      integer(kind=4):: inc_value
      parameter(inc_value=400)      
      integer:: a(200_4)
      integer(kind=8):: i
      integer(kind=4):: m
      m=inc_value
      do i=1,200
        a(i)=m
        m=m+inc_value
      enddo
      end

      program main
      integer(kind=4) i4_max
      parameter(i4_max=2147483647)
      integer:: a(200_4)
      call sub(a)
      do i=1,200
	if (mod(i,10).eq.0) then
           print *,i,": ",a(i)
        endif
	if (a(i).le.1.or.a(i).gt.i4_max) then
           print *,i,": ",a(i)," overflow"
           stop
	endif
      enddo
      print *,"ok"
      end




