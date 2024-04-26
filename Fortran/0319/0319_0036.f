      function non_const_ch_func(arg,index) result(result)
      character*(*),dimension(10)::arg
      character(len=len(arg(1)))::result
      do i=1,10
        if ( i == index ) result=arg(i)
      enddo
      return 
      end
      subroutine set_and_check_func(arg,index)
      character*(*),dimension(10)::arg
      character(len=len(arg(1)))::result
      interface
        function non_const_ch_func(arg,i) result(res)
        character*(*),dimension(10)::arg
        character(len=len(arg))::res
        end function
      end interface
      result = non_const_ch_func(arg,index)      
      if ( arg(index) /= result ) print *,'test ng'
      return
      end
      character*10,dimension(10):: init_ch
      do i=1,10
         if ( i== 7 ) then
            init_ch(i)='+12345678-'
         else
            init_ch(i)='5678-+1234'
         endif
      enddo
      call set_and_check_func(init_ch,7)
      print *,'test end'
      stop
      end
