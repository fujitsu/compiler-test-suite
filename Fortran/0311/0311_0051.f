      integer::s_i(10),s_j,s_k,v_i(10),v_j,v_k
      common /blk/s_j,v_j
      integer error/0/
      data s_i/1,2,3,4,5,6,7,8,9,10/
     +    ,v_i/1,2,3,4,5,6,7,8,9,10/

      s_j=cos(0.0)
      s_k=aint(10.5)
      v_j=s_j*1
      v_k=s_k/1
      call sub(s_i,s_k,v_i,v_k)
C
      do i=1,10
         if(v_i(i) .ne. s_i(i)) then
            error=1
         endif
      enddo
      if(error .eq. 0) then
         write(6,*) 'OK'
      else
         write(6,*) 'NG'
      endif
      stop
      end

      subroutine sub(s_i,s_k,v_i,v_k)
      integer::s_i(s_k),s_j,s_k,v_i(s_k),v_j,v_k
      common /blk/s_j,v_j
      integer s_x(s_j:s_k),v_x(v_j:v_k)
      integer,allocatable::s_dvt1(:)
      pointer (s_p,s_x),(v_p,v_x)
C
      allocate(s_dvt1(1:s_k-s_j+1))
      s_p=loc(s_i(1))
      do i=0,s_k-s_j-1
         s_dvt1(i+1)=s_i(i+s_j)+1
      enddo
      do i=0,s_k-s_j-1
         s_x(i+s_j+1)=s_dvt1(i+1)
      enddo
      deallocate(s_dvt1)
C
      v_p=loc(v_i(1))
      v_x(s_j+1:s_k)=v_i(s_j:s_k-1)+1

      return
      end
