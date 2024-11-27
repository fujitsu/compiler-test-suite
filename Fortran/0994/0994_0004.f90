 program main
  print *,"twelve error message was detected"
 end program main

 pure subroutine sub_pure() ; end subroutine sub_pure

 elemental subroutine sub_elemental() ; end subroutine sub_elemental

 pure function fun_pure() ; fun_pure=1 ; end function fun_pure

 elemental function fun_elemental() ; fun_elemental=1 ;
 end function fun_elemental

 module mod
  contains

   pure subroutine modsub_pure() ; end subroutine modsub_pure

   elemental subroutine modsub_elemental() ; end subroutine modsub_elemental

   pure function modfun_pure() ; modfun_pure=1 ; end function modfun_pure

   elemental function modfun_elemental() ; modfun_elemental=1 ;
    contains

     pure subroutine modintsub_pure() ; end subroutine modintsub_pure

     elemental subroutine modintsub_elemental() ;
     end subroutine modintsub_elemental

     pure function modintfun_pure() ; modintfun_pure=1 ;
     end function modintfun_pure

     elemental function modintfun_elemental() ; modintfun_elemental=1 ;
     end function modintfun_elemental

   end function modfun_elemental

 end module
