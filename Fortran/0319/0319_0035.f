      function array_func(arg) result(result)
      integer*8,dimension(10):: ires,result,arg
      do i=1,10
         ires(i)=arg(i)+i
      enddo
      result = ires
      return 
      end
      integer*8,dimension(10):: init_val
      interface
        function array_func(arg) result(result)
        integer*8,dimension(10)::arg,result
        end function
      end interface
      do i=1,10
         init_val(i)=i
      enddo
      init_val = array_func(init_val)      
      do i=1,10
         if ( init_val(i)/=(i*2) ) print *,'test ng ',i
      enddo
      print *,'test end'
      stop
      end
