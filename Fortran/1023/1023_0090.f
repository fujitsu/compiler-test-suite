      program main

      type ty01      
        integer        is01
        real           rs01
        complex        xs01
      end type ty01
      integer iext
      type(ty01) :: ty01s01
      iext = 10

      ty01s01%is01 = 1
      ty01s01%rs01 = 2.2
      ty01s01%xs01 = (3,3)
      print *,'expected value:',ty01s01%is01,ty01s01%rs01,ty01s01%xs01
      print *,ty01s01            
      print *,'computed value:',ty01s01            

      end program main
