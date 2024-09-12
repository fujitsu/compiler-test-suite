subroutine sub03(ifunc01 )
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
   character(:), pointer         :: irst01
  end function
 end interface
 procedure(ifunc01), pointer ::  pprocp2 
  entry    sub13(ifunc01 )

 pprocp2 => ifunc01
 if (pprocp2( 1 ) /= '2') print *,101
 if (ifunc01( 1 ) /= '2') print *,102

end subroutine

 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
   character(:), pointer         :: irst01
  end function
 end interface
call sub03( ifunc01 )
call sub13( ifunc01 )
print *,'pass'
end


  function ifunc01(di01) result(irst01)
   integer :: di01
   character(:), pointer     :: irst01
   allocate(character::irst01)
   write(irst01,'(i1)') di01+1
  end function

