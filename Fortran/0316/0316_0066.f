       print *,cfun(10)
       contains
         function cfun(i)
         character*(i) cfun
         cfun='abc'
         end function
       end
