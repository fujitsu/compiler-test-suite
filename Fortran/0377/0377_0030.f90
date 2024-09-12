
call c_sub1([character(10) :: [(merge('abc','def', .true.), i = 1, 3)] // [(achar(i), i = 49, 51)]])

call c_sub1([character(10) :: [(merge('123','456', .true.), i = 1, 3)], [merge('', '', .false.)]])

print *,'pass'

contains

 subroutine c_sub1(dc1)
  interface
   function c_sub_p1(dc1) result(rst)
    character(*)  :: dc1(*)
    integer       :: rst
   end function
  end interface
  character(*)  :: dc1(*)
  i = c_sub_p1(dc1)
 end subroutine
end

function c_sub_p1(dc1) result(rst)
 character(*)  :: dc1(*)
 integer       :: rst
 rst = kind(dc1)
end function
