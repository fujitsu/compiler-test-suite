      integer::s_i(5,2),s_x(-5:-1),s_dvt1(5),s_dvt2(5)
      integer::v_i(5,2),v_x(-5:-1)
      integer::error=0
      pointer (s_p,s_x)
     +       ,(v_p,v_x)
      data s_i/1,2,3,4,5,6,7,8,9,10/
     +    ,v_i/1,2,3,4,5,6,7,8,9,10/
C
      s_p=loc(s_i(1,1))
      do i=1,5
        s_dvt1(i)=s_x(i-6)+1
      enddo
      do i=1,5
         s_x(i-6)=s_dvt1(i)
      enddo
      s_p=s_p+20
      do i=1,5
        s_dvt2(i)=s_x(i-6)+2
      enddo
      do i=1,5
         s_x(i-6)=s_dvt2(i)
      enddo
C
      v_p=loc(v_i(1,1))
      v_x=v_x+1
      v_p=v_p+20
      v_x(:)=v_x(:)+2
C
      do j=1,2
         do i=1,5
            if(v_i(i,j) .ne. s_i(i,j)) then
               error=1
            endif
         enddo
      enddo
      if(error .eq. 0) then
         write(6,*) 'OK'
      else
         write(6,*) 'NG'
         write(6,*) 's_i(5,2)=',s_i
         write(6,*) 'v_i(5,2)=',v_i
      endif
      stop
      end
