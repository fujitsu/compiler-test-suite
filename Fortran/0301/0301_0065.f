      subroutine sub(z, a)
      integer:: a(200_4)
      integer(kind=8):: i
      integer(kind=4):: z
      integer(kind=4):: m
      integer(kind=2):: j
      j=z	
      m=j
      do i=1,200
        a(i)=m
        m=m+j
      enddo
      end

      program main
      integer(kind=4) i4_max
      parameter(i4_max=2147483647)
      integer:: a(200_4)
      call sub(400_4,a)
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



