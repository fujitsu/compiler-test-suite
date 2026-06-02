
function test_integer_1(flag1, flag2, d_val, d_data)
   integer(kind=1) :: flag1, flag2
   integer(kind=1) :: d_val
   integer(kind=1) , dimension(256) :: d_data
   do i=1, 256
      if (flag1 .eq. flag2) then
         d_data(i) = 1
      end if
   end do
   do i=1, 256
      if (d_data(i) .ne. d_val) then
         test_integer_1=0
         return
      end if
   end do
   test_integer_1=1
   return
end function test_integer_1

subroutine test_execute_integer_1
   integer(kind=1) , dimension(256) :: data1/256*0/, data2/256*0/
   integer(kind=1) :: flag1, flag2, d_val

   flag1 = 1; flag2 = 1; d_val = 1
   result = test_integer_1(flag1, flag2, d_val, data1)
   if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 2; flag2 = 3; d_val = 0
   result = test_integer_1(flag1, flag2, d_val, data2)
   if ( result .eq. 0) print *, 'integer 1 NG'
end subroutine test_execute_integer_1

function test_integer_2(flag1, flag2, d_val, d_data)
   integer(kind=2) :: flag1, flag2
   integer(kind=2) :: d_val
   integer(kind=2) , dimension(256) :: d_data
   do i=1, 256
      if (flag1 .eq. flag2) then
         d_data(i) = 1
      end if
   end do
   do i=1, 256
      if (d_data(i) .ne. d_val) then
         test_integer_2=0
         return
      end if
   end do
   test_integer_2=1
   return
end function test_integer_2

subroutine test_execute_integer_2
   integer(kind=2) , dimension(256) :: data1/256*0/, data2/256*0/
   integer(kind=2) :: flag1, flag2, d_val

   flag1 = 1; flag2 = 1; d_val = 1
   result = test_integer_2(flag1, flag2, d_val, data1)
   if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 2; flag2 = 3; d_val = 0
   result = test_integer_2(flag1, flag2, d_val, data2)
   if ( result .eq. 0) print *, 'integer 2 NG'
end subroutine test_execute_integer_2

function test_integer_4(flag1, flag2, d_val, d_data)
   integer(kind=4) :: flag1, flag2
   integer(kind=4) :: d_val
   integer(kind=4) , dimension(256) :: d_data
   do i=1, 256
      if (flag1 .eq. flag2) then
         d_data(i) = 1
      end if
   end do
   do i=1, 256
      if (d_data(i) .ne. d_val) then
         test_integer_4=0
         return
      end if
   end do
   test_integer_4=1
   return
end function test_integer_4

subroutine test_execute_integer_4
   integer(kind=4) , dimension(256) :: data1/256*0/, data2/256*0/
   integer(kind=4) :: flag1, flag2, d_val

   flag1 = 1; flag2 = 1; d_val = 1
   result = test_integer_4(flag1, flag2, d_val, data1)
   if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 2; flag2 = 3; d_val = 0
   result = test_integer_4(flag1, flag2, d_val, data2)
   if ( result .eq. 0) print *, 'integer 4 NG'
end subroutine test_execute_integer_4

function test_integer_8(flag1, flag2, d_val, d_data)
   integer(kind=8) :: flag1, flag2
   integer(kind=8) :: d_val
   integer(kind=8) , dimension(256) :: d_data
   do i=1, 256
      if (flag1 .eq. flag2) then
         d_data(i) = 1
      end if
   end do
   do i=1, 256
      if (d_data(i) .ne. d_val) then
         test_integer_8=0
         return
      end if
   end do
   test_integer_8=1
   return
end function test_integer_8

subroutine test_execute_integer_8
   integer(kind=8) , dimension(256) :: data1/256*0/, data2/256*0/
   integer(kind=8) :: flag1, flag2, d_val

   flag1 = 1; flag2 = 1; d_val = 1
   result = test_integer_8(flag1, flag2, d_val, data1)
   if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 2; flag2 = 3; d_val = 0
   result = test_integer_8(flag1, flag2, d_val, data2)
   if ( result .eq. 0) print *, 'integer 8 NG'
end subroutine test_execute_integer_8

function test_real_4(flag1, flag2, d_val, d_data)
   real(kind=4) :: flag1, flag2
   real(kind=4) :: d_val
   real(kind=4) , dimension(256) :: d_data
   do i=1, 256
      if (flag1 .eq. flag2) then
         d_data(i) = 1
      end if
   end do
   do i=1, 256
      if (d_data(i) .ne. d_val) then
         test_real_4=0
         return
      end if
   end do
   test_real_4=1
   return
end function test_real_4

subroutine test_execute_real_4
   real(kind=4) , dimension(256) :: data1/256*0/, data2/256*0/
   real(kind=4) :: flag1, flag2, d_val

   flag1 = 1; flag2 = 1; d_val = 1
   result = test_real_4(flag1, flag2, d_val, data1)
   if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 2; flag2 = 3; d_val = 0
   result = test_real_4(flag1, flag2, d_val, data2)
   if ( result .eq. 0) print *, 'real 4 NG'
end subroutine test_execute_real_4

function test_real_8(flag1, flag2, d_val, d_data)
   real(kind=8) :: flag1, flag2
   real(kind=8) :: d_val
   real(kind=8) , dimension(256) :: d_data
   do i=1, 256
      if (flag1 .eq. flag2) then
         d_data(i) = 1
      end if
   end do
   do i=1, 256
      if (d_data(i) .ne. d_val) then
         test_real_8=0
         return
      end if
   end do
   test_real_8=1
   return
end function test_real_8

subroutine test_execute_real_8
   real(kind=8) , dimension(256) :: data1/256*0/, data2/256*0/
   real(kind=8) :: flag1, flag2, d_val

   flag1 = 1; flag2 = 1; d_val = 1
   result = test_real_8(flag1, flag2, d_val, data1)
   if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 2; flag2 = 3; d_val = 0
   result = test_real_8(flag1, flag2, d_val, data2)
   if ( result .eq. 0) print *, 'real 8 NG'
end subroutine test_execute_real_8

function test_real_16(flag1, flag2, d_val, d_data)
   real(kind=16) :: flag1, flag2
   real(kind=16) :: d_val
   real(kind=16) , dimension(256) :: d_data
   do i=1, 256
      if (flag1 .eq. flag2) then
         d_data(i) = 1
      end if
   end do
   do i=1, 256
      if (d_data(i) .ne. d_val) then
         test_real_16=0
         return
      end if
   end do
   test_real_16=1
   return
end function test_real_16

subroutine test_execute_real_16
   real(kind=16) , dimension(256) :: data1/256*0/, data2/256*0/
   real(kind=16) :: flag1, flag2, d_val

   flag1 = 1; flag2 = 1; d_val = 1
   result = test_real_16(flag1, flag2, d_val, data1)
   if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 2; flag2 = 3; d_val = 0
   result = test_real_16(flag1, flag2, d_val, data2)
   if ( result .eq. 0) print *, 'real 16 NG'
end subroutine test_execute_real_16

program main
   call test_execute_integer_1
   call test_execute_integer_2
   call test_execute_integer_4
   call test_execute_integer_8
   call test_execute_real_4
   call test_execute_real_8
   call test_execute_real_16

   print *, 'test finish'
end program main
