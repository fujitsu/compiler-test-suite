      integer*4 upper,lower,error/0/
      parameter (lower=3,upper=7)
      structure /str1/
        real*4 lower/-10.0/,upper/10.0/
      end structure
      structure /str2/
        record /str1/ init
        structure L1
          integer i4(1:10)/1,2,3,4,5,6,7,8,9,10/
        end structure
      end structure
      record /str2/ s_a,v_a
      integer,allocatable::s_dvt1(:)
c
      allocate(s_dvt1(0:upper-lower))
      do i=0,upper-lower
        s_dvt1(i)=s_a%L1%i4(i+lower+1)+1
      enddo
      do i=0,upper-lower
         s_a%L1%i4(i+lower)=s_dvt1(i)
      enddo
      deallocate(s_dvt1)
c
      v_a%L1%i4(lower:upper)
     +   = v_a%L1%i4(lower+1:upper+1)+1

      if(v_a.init.lower .ne. s_a.init.lower .or.
     +   v_a.init.upper .ne. s_a.init.upper) then
        error=1
      endif
      do i=1,10
        if(v_a.L1.i4(i) .ne.  s_a.L1.i4(i)) then
          error=1
        endif
      enddo

      if(error .eq. 0) then
        write(6,*) 'OK'
      else
        write(6,*) 'NG'
        write(6,*) 'v_a(init(lower,upper),i4(1:10))=',v_a
        write(6,*) 's_a(init(lower,upper),i4(1:10))=',s_a
      endif
      stop
      end
