      integer::s_i(10),s_x(10),s_dvt1(10),s_dvt2(5)
      integer::v_i(10),v_x(10)
      integer::error=0
      equivalence(s_dvt1(6),s_dvt2(1))
      pointer (s_p,s_x)
      pointer (v_p,v_x)
      data s_i/1,2,3,4,5,6,7,8,9,10/
      data v_i/1,2,3,4,5,6,7,8,9,10/
C
      s_p=loc(s_i(1))
      do i=1,10
        s_dvt1(i)=s_i(i)+1
      enddo
      do i=1,10
         s_i(i)=s_dvt1(i)
      enddo
      do i=1,5
         s_dvt2(i)=s_i(i)
      enddo
      do i=1,5
         s_x(i+1)=s_dvt2(i)
      enddo
C
      v_p=loc(v_i(1))
      v_i=v_i+1
      v_x(2:6)=v_i(1:5)
C
      do i=1,10
         if(v_x(i) .ne. s_x(i) .or.
     +      v_i(i) .ne. s_i(i)     ) then
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
      stop
      end


