      subroutine sub(ap,r)
      integer,pointer::ap
      integer        :: r
      integer,save   :: sum
      do i=1,10
        if( associated(ap) ) then
          sum = sum + ap
        end if
      enddo
      if( .not.associated(ap) ) then
          sum = 10
      end if
      r = sum
      end
      interface 
        subroutine sub(ptr,result)
          integer,pointer ::ptr
          integer ::result
	end
      end interface
      integer         :: sum
      integer,target  :: v
      integer,pointer :: v_ptr
      sum=0
      nullify(v_ptr)
      print *,'call sub 1st'
      call sub(v_ptr,sum)
      print *,sum
      v=0
      v_ptr=>v
      v_ptr=100
      print *,'call sub 2nd'
      call sub(v_ptr,sum)
      print *,sum
      end
