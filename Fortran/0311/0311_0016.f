      integer*4 s_a(10),s_b(11),s_i,s_j,s_k,s_dvt1(10),s_dvt2(10)
     +         ,v_a(10),v_b(11),v_i,v_j,v_k
     +         ,error/0/
c
      do i=1,10
         s_a(i)=1
      enddo
      do i=1,10
         s_b(i)=2
      enddo
      s_i=3
      do i=1,10
         s_dvt1(i)=s_a(i)+4
      enddo
      do i=1,10
         s_a(i)=s_dvt1(i)
      enddo
      s_j=5
      s_k=6
      do i=1,10
         s_dvt2(i)=s_b(i)+7
      enddo
      do i=1,10
         s_b(i+1)=s_dvt2(i)
      enddo
c
      v_a=1
      v_b(1:10)=2
      v_i=3
      v_a=v_a+4
      v_j=5
      v_k=6
      v_b(2:11)=v_b(1:10)+7
c
      do i=1,10
         if(v_a(i) .ne. s_a(i) .or.
     +      v_b(i) .ne. s_b(i) .or.
     +      v_i    .ne. s_i    .or.
     +      v_j    .ne. s_j    .or.
     +      v_k    .ne. s_k   ) then
            error=1
         endif
         if(v_b(11) .ne. s_b(11)) error=1
      enddo

      if(error .eq. 0) then
         write(6,*) 'OK'
      else
         write(6,*) 'NG'
         write(6,*) 's_a(1:10)=',s_a
         write(6,*) 'v_a(1:10)=',v_a
         write(6,*) 's_b(1:11)=',s_b
         write(6,*) 'v_b(1:11)=',v_b
      endif
      stop
      end
