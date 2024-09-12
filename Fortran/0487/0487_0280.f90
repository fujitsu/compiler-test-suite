   logical(kind=1) :: log1
   logical(kind=2) :: log2
   logical(kind=4) :: log4
   logical(kind=8) :: log8
   common /com1/ log1
   common /com2/ log2
   common /com4/ log4
   common /com8/ log8
   bind(c) :: /com1/
   bind(c) :: /com2/
   bind(c) :: /com4/
   bind(c) :: /com8/
   log1=.true.
   log2=.true.
   log4=.true.
   log8=.true.
   if (.not.log1) print *,101
   if (.not.log2) print *,102
   if (.not.log4) print *,104
   if (.not.log8) print *,108
print *,'pass'
end
