program main
  integer(kind=1) :: iii1(10)
  integer(kind=2) :: iii2(10)
  integer(kind=4) :: iii4(10)
  integer(kind=8) :: iii8(10)
  real(kind=4) :: rrr4(10)
  real(kind=8) :: rrr8(10)
  real(kind=16) :: rrr16(10)
  complex(kind=4) :: cmp4(10)
  complex(kind=8) :: cmp8(10)
  complex(kind=16) :: cmp16(10)
  logical(kind=1) :: lll1(10)
  logical(kind=2) :: lll2(10)
  logical(kind=4) :: lll4(10)
  logical(kind=8) :: lll8(10)

  integer(kind=1) :: siii1(10) = 100_1
  integer(kind=2) :: siii2(10) = 200_2
  integer(kind=4) :: siii4(10) = 400_4
  integer(kind=8) :: siii8(10) = 800_8
  real(kind=4) :: srrr4(10) = 1.0_4
  real(kind=8) :: srrr8(10) = 1.0_8
  real(kind=16) :: srrr16(10) = 1.0_16
  complex(kind=4) :: scmp4(10) = (1.0_4,2.0_4)
  complex(kind=8) :: scmp8(10) = (3.0_8,4.0_8)
  complex(kind=16) :: scmp16(10) = (5.0_16,6.0_16)
  logical(kind=1) :: slll1(10) = .true._1
  logical(kind=2) :: slll2(10) = .true._2
  logical(kind=4) :: slll4(10) = .true._4
  logical(kind=8) :: slll8(10) = .true._8

  iii1 = 100_1
  iii2 = 200_2
  iii4 = 400_4
  iii8 = 800_8
  rrr4 = 1.0_4
  rrr8 = 1.0_8
  rrr16 = 1.0_16
  cmp4 = (1.0_4,2.0_4)
  cmp8 = (3.0_8,4.0_8)
  cmp16 = (5.0_16,6.0_16)
  lll1 = .true._1
  lll2 = .true._2
  lll4 = .true._4
  lll8 = .true._8

  if(any(iii1/=(/(100_1,i=1,10)/))) print *,'ng-1'
  if(any(iii2/=(/(200_2,i=1,10)/))) print *,'ng-2'
  if(any(iii4/=(/(400_4,i=1,10)/))) print *,'ng-3'
  if(any(iii8/=(/(800_8,i=1,10)/))) print *,'ng-4'
  if(any(rrr4/=(/(1.0_4,i=1,10)/))) print *,'ng-5'
  if(any(rrr8/=(/(1.0_8,i=1,10)/))) print *,'ng-6'
  if(any(rrr16/=(/(1.0_16,i=1,10)/))) print *,'ng-7'
  if(any(cmp4/=(/((1.0_4,2.0_4),i=1,10)/))) print *,'ng-8'
  if(any(cmp8/=(/((3.0_8,4.0_8),i=1,10)/))) print *,'ng-9'
  if(any(cmp16/=(/((5.0_16,6.0_16),i=1,10)/))) print *,'ng-10'
  if(.not. all(lll1)) print *,'ng-11'
  if(.not. all(lll2)) print *,'ng-12'
  if(.not. all(lll4)) print *,'ng-13'
  if(.not. all(lll8)) print *,'ng-14'


  if(any(siii1/=(/(100_1,i=1,10)/))) print *,'ng-15'
  if(any(siii2/=(/(200_2,i=1,10)/))) print *,'ng-16'
  if(any(siii4/=(/(400_4,i=1,10)/))) print *,'ng-17'
  if(any(siii8/=(/(800_8,i=1,10)/))) print *,'ng-18'
  if(any(srrr4/=(/(1.0_4,i=1,10)/))) print *,'ng-19'
  if(any(srrr8/=(/(1.0_8,i=1,10)/))) print *,'ng-20'
  if(any(srrr16/=(/(1.0_16,i=1,10)/))) print *,'ng-21'
  if(any(scmp4/=(/((1.0_4,2.0_4),i=1,10)/))) print *,'ng-22'
  if(any(scmp8/=(/((3.0_8,4.0_8),i=1,10)/))) print *,'ng-23'
  if(any(scmp16/=(/((5.0_16,6.0_16),i=1,10)/))) print *,'ng-24'
  if(.not. all(slll1)) print *,'ng-25'
  if(.not. all(slll2)) print *,'ng-26'
  if(.not. all(slll4)) print *,'ng-27'
  if(.not. all(slll8)) print *,'ng-28'
  print *,'ok'

end program
