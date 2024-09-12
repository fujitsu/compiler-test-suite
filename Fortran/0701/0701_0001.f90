  call test01()
  call test02()
  call test03()
  call test04()
  print *,'pass'
  end

  subroutine test01()
   interface  operator( .PLUS. )
     function  INTEGER_BINARY_PLUS_SC( L, R )
       integer, intent(in) :: L, R
       integer :: INTEGER_BINARY_PLUS_SC
     end function  INTEGER_BINARY_PLUS_SC
     function  INTEGER_BINARY_PLUS_SC1( R )
       integer, intent(in) :: R
       integer :: INTEGER_BINARY_PLUS_SC1
     end function  INTEGER_BINARY_PLUS_SC1
   end interface
  IC=2
  IV = .PLUS. IC
  if (IV.ne.7) print *,'test01 ng'
  end subroutine
   function  INTEGER_BINARY_PLUS_SC( L, R )
    integer, intent(in) :: L, R
    integer :: INTEGER_BINARY_PLUS_SC
    INTEGER_BINARY_PLUS_SC = R + kind(L)
    if (R.ne.2) INTEGER_BINARY_PLUS_SC = 99
   end function  INTEGER_BINARY_PLUS_SC
   function  INTEGER_BINARY_PLUS_SC1(R )
    integer, intent(in) ::  R
    integer :: INTEGER_BINARY_PLUS_SC1
    INTEGER_BINARY_PLUS_SC1 = R + 5 
    if (R.ne.2) INTEGER_BINARY_PLUS_SC1 = 99
   end function  INTEGER_BINARY_PLUS_SC1

  subroutine test02()
   interface  operator( .PLUS. )
     function  ifunc_test02_01( L, R )
       integer, intent(in) :: L, R
       integer :: ifunc_test02_01
     end function 
     function  ifunc_test02_02(  R )
       integer, intent(in) :: R
       integer :: ifunc_test02_02
     end function 
   end interface
  IC=2
  IV = .PLUS. IC
  if (IV.ne.6) print *,'test02 ng'
  IV = 3 .PLUS. IC
  if (IV.ne.5) print *,'test02 ng'
  end subroutine
     function  ifunc_test02_01( L, R )
       integer, intent(in) :: L, R
       integer :: ifunc_test02_01
       ifunc_test02_01 = L+R
       if (L.ne.3) ifunc_test02_01=0
       if (R.ne.2) ifunc_test02_01=0
     end function 
     function  ifunc_test02_02(  R )
       integer, intent(in) :: R
       integer :: ifunc_test02_02
       ifunc_test02_02=R*3
       if (R.ne.2) ifunc_test02_02=99
     end function 

  subroutine test03()
   interface  operator( .PLUS. )
     function  ifunc_test03_02(  R )
       integer, intent(in) :: R
       integer :: ifunc_test03_02
     end function 
     function  ifunc_testq3_01( L, R )
       integer*2, intent(in) :: L, R
       integer :: ifunc_testq3_01
     end function 
     function  ifunc_testd3_03( L, R )
       real*4, intent(in) :: L, R
       integer :: ifunc_testd3_03
     end function 
     function  ifunc_test03_01( R )
       integer*2, intent(in) :: R
       integer :: ifunc_test03_01
     end function 
     function  ifunc_test03_03( R )
       real*4, intent(in) :: R
       integer :: ifunc_test03_03
     end function 
   end interface
  IC=2
  IV = .PLUS. IC * 2
  if (IV.ne.12) print *,'test03 ng'
  IV = .PLUS. 2_2
  if (IV.ne.4) print *,'test03 ng'
  IV = .PLUS. 3.0_4
  if (IV.ne.3) print *,'test03 ng'
  end subroutine
     function  ifunc_test03_01( R )
       integer*2, intent(in) :: R
       integer*2 L
       integer :: ifunc_test03_01
       L=1
       ifunc_test03_01 = kind(L)+R
       if (R.ne.2) ifunc_test03_01=0
     end function 
     function  ifunc_test03_02(  R )
       integer, intent(in) :: R
       integer :: ifunc_test03_02
       ifunc_test03_02=R*3
       if (R.ne.2) ifunc_test03_02=99
     end function 
     function  ifunc_test03_03( R )
       real*4   , intent(in) :: R
       real*4   L
       integer :: ifunc_test03_03
       L=1
       if (1.ne.1) i = L
       ifunc_test03_03 = R
       if (R.ne.3.0) ifunc_test03_03=0
     end function 

  subroutine test04()
   interface  operator( .PLUS. )
     function  ifunc_test04_02(  R )
       integer, intent(in) :: R
       integer :: ifunc_test04_02
     end function 
     function  ifunc_test04_x1( L, R )
       integer*2, intent(in) :: L, R
       integer :: ifunc_test04_x1
     end function 
     function  ifunc_test04_x3( L, R )
       real*4, intent(in) :: L, R
       integer :: ifunc_test04_x3
     end function 
     function  ifunc_test04_01(  R )
       integer*2, intent(in) ::  R
       integer :: ifunc_test04_01
     end function 
     function  ifunc_test04_03(  R )
       real*4, intent(in) ::  R
       integer :: ifunc_test04_03
     end function 
   end interface
  IC=2
  IV = (.PLUS. IC * 2)
  if (IV.ne.12) print *,'test04 ng'
  IV = .PLUS. (2_2)
  if (IV.ne.4) print *,'test04 ng'
  IV = (.PLUS. (3.0_4))
  if (IV.ne.3) print *,'test04 ng'
  end subroutine
     function  ifunc_test04_01( R )
       integer*2, intent(in) :: R
       integer*2 L
       data L /1/
       integer :: ifunc_test04_01
       ifunc_test04_01 = kind(L)+R
       if (R.ne.2) ifunc_test04_01=0
     end function 
     function  ifunc_test04_02(  R )
       integer, intent(in) :: R
       integer :: ifunc_test04_02
       ifunc_test04_02=R*3
       if (R.ne.2) ifunc_test04_02=99
     end function 
     function  ifunc_test04_03(  R )
       real*4   , intent(in) ::  R
       real*4   L
       data L /1.0/
       integer :: ifunc_test04_03
       if (1.ne.1) i = L
       ifunc_test04_03 = R
       if (R.ne.3.0) ifunc_test04_03=0
     end function 
