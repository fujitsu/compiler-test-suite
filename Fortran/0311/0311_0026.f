      integer,allocatable::s_i(:),v_i(:)
      integer::s_x(10),v_x(10),s_dvt1(10)
      integer::error=0
      pointer (s_p,s_x),(v_p,v_x)
C
      allocate(s_i(1:10))
      s_p=loc(s_i(1))
      do i=1,10
        s_x(i)=1
      enddo
      do i=1,10
         s_dvt1(i)=s_i(i)+1
      enddo
      do i=1,10
         s_x(i)=s_dvt1(i)
      enddo
C
      allocate(v_i(1:10))
      v_p=loc(v_i(1))
      v_x(:)=1
      v_x(:)=v_i+1
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
         write(6,*) 's_i(1:10)=',s_i
         write(6,*) 'v_i(1:10)=',v_i
      endif
      deallocate(s_i)
      deallocate(v_i)
      stop
      end
