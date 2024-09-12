interface
 subroutine sub1(i,j,k)
  integer,parameter :: cnt1=1
  integer,parameter :: val=1
  character :: i
  character(len=cnt1+1) :: j
  character(len=val+2) ::  k
  value :: i,j,k
 end subroutine
end interface
call sub1('a','bb','ccc')
print *,'pass'
end

subroutine sub1(d_ch1,d_ch2,d_ch3)
 integer,parameter :: cnt1=1
 integer,parameter :: val=1

 character ::             d_ch1
 character(len=cnt1+1) :: d_ch2
 character(len=val+2) ::  d_ch3
 value :: d_ch1,d_ch2,d_ch3

 if(LEN(d_ch1) /= 1) call errtra
 if(LEN(d_ch2) /= 2) call errtra
 if(LEN(d_ch3) /= 3) call errtra
end
