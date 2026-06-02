
function test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   integer(kind=1) :: flag1, flag2, flag3
   integer(kind=1) :: d_val1, d_val2
   integer(kind=1) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt1_integer_1=0
         return
      end if
   end do
   test_pt1_integer_1=1
   return
end function test_pt1_integer_1

function test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   integer(kind=1) :: flag1, flag2, flag3
   integer(kind=1) :: d_val1, d_val2
   integer(kind=1) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt2_integer_1=0
         return
      end if
   end do
   test_pt2_integer_1=1
   return
end function test_pt2_integer_1

subroutine init_data_integer_1(data1, data2)
   integer(kind=1) , dimension(256) :: data1, data2
   do i=1, 256
      data1(i) = 0
      data2(i) = 0
   end do
end subroutine init_data_integer_1

subroutine test_execute_integer_1
   integer(kind=1) , dimension(256) :: data1, data2
   integer(kind=1) :: flag1, flag2, flag3, d_val1, d_val2
   integer(kind=4) :: lmax

   flag1 = 64; flag2 = 96; flag3 = 32; d_val1 = 1; d_val2 = 1; lmax = 256
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; d_val1 = 1; d_val2 = 2; lmax = 256
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; d_val1 = 1; d_val2 = 4; lmax = 256
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; d_val1 = 4; d_val2 = 1; lmax = 256
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; d_val1 = 4; d_val2 = 2; lmax = 256
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; d_val1 = 4; d_val2 = 4; lmax = 256
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; d_val1 = 2; d_val2 = 1; lmax = 256
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; d_val1 = 2; d_val2 = 2; lmax = 256
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; d_val1 = 2; d_val2 = 4; lmax = 256
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 96; flag3 = 32; lmax = 0
   d_val1 = 1; d_val2 = 1
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; lmax = 0
   d_val1 = 1; d_val2 = 2
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; lmax = 0
   d_val1 = 1; d_val2 = 4
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; lmax = 0
   d_val1 = 4; d_val2 = 1
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; lmax = 0
   d_val2 = 2; d_val1 = 4
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; lmax = 0
   d_val1 = 4; d_val2 = 4
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; lmax = 0
   d_val1 = 2; d_val2 = 1
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; lmax = 0
   d_val1 = 2; d_val2 = 2
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; lmax = 0
   d_val1 = 2; d_val2 = 4
   call init_data_integer_1(data1, data2); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_1(data1, data2); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 1 NG'
end subroutine test_execute_integer_1

function test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   integer(kind=2) :: flag1, flag2, flag3
   integer(kind=2) :: d_val1, d_val2
   integer(kind=2) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt1_integer_2=0
         return
      end if
   end do
   test_pt1_integer_2=1
   return
end function test_pt1_integer_2

function test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   integer(kind=2) :: flag1, flag2, flag3
   integer(kind=2) :: d_val1, d_val2
   integer(kind=2) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt2_integer_2=0
         return
      end if
   end do
   test_pt2_integer_2=1
   return
end function test_pt2_integer_2

subroutine init_data_integer_2(data1, data2)
   integer(kind=2) , dimension(256) :: data1, data2
   do i=1, 256
      data1(i) = 0
      data2(i) = 0
   end do
end subroutine init_data_integer_2

subroutine test_execute_integer_2
   integer(kind=2) , dimension(256) :: data1, data2
   integer(kind=2) :: flag1, flag2, flag3, d_val1, d_val2
   integer(kind=4) :: lmax

   flag1 = 64; flag2 = 96; flag3 = 32; d_val1 = 1; d_val2 = 1; lmax = 256
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; d_val1 = 1; d_val2 = 2; lmax = 256
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; d_val1 = 1; d_val2 = 4; lmax = 256
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; d_val1 = 4; d_val2 = 1; lmax = 256
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; d_val1 = 4; d_val2 = 2; lmax = 256
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; d_val1 = 4; d_val2 = 4; lmax = 256
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; d_val1 = 2; d_val2 = 1; lmax = 256
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; d_val1 = 2; d_val2 = 2; lmax = 256
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; d_val1 = 2; d_val2 = 4; lmax = 256
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 96; flag3 = 32; lmax = 0
   d_val1 = 1; d_val2 = 1
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; lmax = 0
   d_val1 = 1; d_val2 = 2
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; lmax = 0
   d_val1 = 1; d_val2 = 4
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; lmax = 0
   d_val1 = 4; d_val2 = 1
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; lmax = 0
   d_val2 = 2; d_val1 = 4
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; lmax = 0
   d_val1 = 4; d_val2 = 4
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; lmax = 0
   d_val1 = 2; d_val2 = 1
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; lmax = 0
   d_val1 = 2; d_val2 = 2
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; lmax = 0
   d_val1 = 2; d_val2 = 4
   call init_data_integer_2(data1, data2); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_2(data1, data2); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 2 NG'
end subroutine test_execute_integer_2

function test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   integer(kind=4) :: flag1, flag2, flag3
   integer(kind=4) :: d_val1, d_val2
   integer(kind=4) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt1_integer_4=0
         return
      end if
   end do
   test_pt1_integer_4=1
   return
end function test_pt1_integer_4

function test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   integer(kind=4) :: flag1, flag2, flag3
   integer(kind=4) :: d_val1, d_val2
   integer(kind=4) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt2_integer_4=0
         return
      end if
   end do
   test_pt2_integer_4=1
   return
end function test_pt2_integer_4

subroutine init_data_integer_4(data1, data2)
   integer(kind=4) , dimension(256) :: data1, data2
   do i=1, 256
      data1(i) = 0
      data2(i) = 0
   end do
end subroutine init_data_integer_4

subroutine test_execute_integer_4
   integer(kind=4) , dimension(256) :: data1, data2
   integer(kind=4) :: flag1, flag2, flag3, d_val1, d_val2
   integer(kind=4) :: lmax

   flag1 = 64; flag2 = 96; flag3 = 32; d_val1 = 1; d_val2 = 1; lmax = 256
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; d_val1 = 1; d_val2 = 2; lmax = 256
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; d_val1 = 1; d_val2 = 4; lmax = 256
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; d_val1 = 4; d_val2 = 1; lmax = 256
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; d_val1 = 4; d_val2 = 2; lmax = 256
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; d_val1 = 4; d_val2 = 4; lmax = 256
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; d_val1 = 2; d_val2 = 1; lmax = 256
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; d_val1 = 2; d_val2 = 2; lmax = 256
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; d_val1 = 2; d_val2 = 4; lmax = 256
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 32; lmax = 0
   d_val1 = 1; d_val2 = 1
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; lmax = 0
   d_val1 = 1; d_val2 = 2
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; lmax = 0
   d_val1 = 1; d_val2 = 4
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; lmax = 0
   d_val1 = 4; d_val2 = 1
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; lmax = 0
   d_val2 = 2; d_val1 = 4
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; lmax = 0
   d_val1 = 4; d_val2 = 4
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; lmax = 0
   d_val1 = 2; d_val2 = 1
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; lmax = 0
   d_val1 = 2; d_val2 = 2
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; lmax = 0
   d_val1 = 2; d_val2 = 4
   call init_data_integer_4(data1, data2); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_4(data1, data2); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 4 NG'
end subroutine test_execute_integer_4

function test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   integer(kind=8) :: flag1, flag2, flag3
   integer(kind=8) :: d_val1, d_val2
   integer(kind=8) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt1_integer_8=0
         return
      end if
   end do
   test_pt1_integer_8=1
   return
end function test_pt1_integer_8

function test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   integer(kind=8) :: flag1, flag2, flag3
   integer(kind=8) :: d_val1, d_val2
   integer(kind=8) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt2_integer_8=0
         return
      end if
   end do
   test_pt2_integer_8=1
   return
end function test_pt2_integer_8

subroutine init_data_integer_8(data1, data2)
   integer(kind=8) , dimension(256) :: data1, data2
   do i=1, 256
      data1(i) = 0
      data2(i) = 0
   end do
end subroutine init_data_integer_8

subroutine test_execute_integer_8
   integer(kind=8) , dimension(256) :: data1, data2
   integer(kind=8) :: flag1, flag2, flag3, d_val1, d_val2
   integer(kind=4) :: lmax

   flag1 = 64; flag2 = 96; flag3 = 32; d_val1 = 1; d_val2 = 1; lmax = 256
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; d_val1 = 1; d_val2 = 2; lmax = 256
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; d_val1 = 1; d_val2 = 4; lmax = 256
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; d_val1 = 4; d_val2 = 1; lmax = 256
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; d_val1 = 4; d_val2 = 2; lmax = 256
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; d_val1 = 4; d_val2 = 4; lmax = 256
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; d_val1 = 2; d_val2 = 1; lmax = 256
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; d_val1 = 2; d_val2 = 2; lmax = 256
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; d_val1 = 2; d_val2 = 4; lmax = 256
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 32; lmax = 0
   d_val1 = 1; d_val2 = 1
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; lmax = 0
   d_val1 = 1; d_val2 = 2
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; lmax = 0
   d_val1 = 1; d_val2 = 4
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; lmax = 0
   d_val1 = 4; d_val2 = 1
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; lmax = 0
   d_val2 = 2; d_val1 = 4
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; lmax = 0
   d_val1 = 4; d_val2 = 4
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; lmax = 0
   d_val1 = 2; d_val2 = 1
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; lmax = 0
   d_val1 = 2; d_val2 = 2
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; lmax = 0
   d_val1 = 2; d_val2 = 4
   call init_data_integer_8(data1, data2); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_integer_8(data1, data2); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'integer 8 NG'
end subroutine test_execute_integer_8

function test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   real(kind=4) :: flag1, flag2, flag3
   real(kind=4) :: d_val1, d_val2
   real(kind=4) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt1_real_4=0
         return
      end if
   end do
   test_pt1_real_4=1
   return
end function test_pt1_real_4

function test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   real(kind=4) :: flag1, flag2, flag3
   real(kind=4) :: d_val1, d_val2
   real(kind=4) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt2_real_4=0
         return
      end if
   end do
   test_pt2_real_4=1
   return
end function test_pt2_real_4

subroutine init_data_real_4(data1, data2)
   real(kind=4) , dimension(256) :: data1, data2
   do i=1, 256
      data1(i) = 0
      data2(i) = 0
   end do
end subroutine init_data_real_4

subroutine test_execute_real_4
   real(kind=4) , dimension(256) :: data1, data2
   real(kind=4) :: flag1, flag2, flag3, d_val1, d_val2
   integer(kind=4) :: lmax

   flag1 = 64; flag2 = 96; flag3 = 32; d_val1 = 1; d_val2 = 1; lmax = 256
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; d_val1 = 1; d_val2 = 2; lmax = 256
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; d_val1 = 1; d_val2 = 4; lmax = 256
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; d_val1 = 4; d_val2 = 1; lmax = 256
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; d_val1 = 4; d_val2 = 2; lmax = 256
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; d_val1 = 4; d_val2 = 4; lmax = 256
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; d_val1 = 2; d_val2 = 1; lmax = 256
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; d_val1 = 2; d_val2 = 2; lmax = 256
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; d_val1 = 2; d_val2 = 4; lmax = 256
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 32; lmax = 0
   d_val1 = 1; d_val2 = 1
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; lmax = 0
   d_val1 = 1; d_val2 = 2
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; lmax = 0
   d_val1 = 1; d_val2 = 4
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; lmax = 0
   d_val1 = 4; d_val2 = 1
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; lmax = 0
   d_val2 = 2; d_val1 = 4
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; lmax = 0
   d_val1 = 4; d_val2 = 4
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; lmax = 0
   d_val1 = 2; d_val2 = 1
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; lmax = 0
   d_val1 = 2; d_val2 = 2
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; lmax = 0
   d_val1 = 2; d_val2 = 4
   call init_data_real_4(data1, data2); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_4(data1, data2); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 4 NG'
end subroutine test_execute_real_4

function test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   real(kind=8) :: flag1, flag2, flag3
   real(kind=8) :: d_val1, d_val2
   real(kind=8) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt1_real_8=0
         return
      end if
   end do
   test_pt1_real_8=1
   return
end function test_pt1_real_8

function test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   real(kind=8) :: flag1, flag2, flag3
   real(kind=8) :: d_val1, d_val2
   real(kind=8) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt2_real_8=0
         return
      end if
   end do
   test_pt2_real_8=1
   return
end function test_pt2_real_8

subroutine init_data_real_8(data1, data2)
   real(kind=8) , dimension(256) :: data1, data2
   do i=1, 256
      data1(i) = 0
      data2(i) = 0
   end do
end subroutine init_data_real_8

subroutine test_execute_real_8
   real(kind=8) , dimension(256) :: data1, data2
   real(kind=8) :: flag1, flag2, flag3, d_val1, d_val2
   integer(kind=4) :: lmax

   flag1 = 64; flag2 = 96; flag3 = 32; d_val1 = 1; d_val2 = 1; lmax = 256
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; d_val1 = 1; d_val2 = 2; lmax = 256
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; d_val1 = 1; d_val2 = 4; lmax = 256
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; d_val1 = 4; d_val2 = 1; lmax = 256
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; d_val1 = 4; d_val2 = 2; lmax = 256
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; d_val1 = 4; d_val2 = 4; lmax = 256
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; d_val1 = 2; d_val2 = 1; lmax = 256
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; d_val1 = 2; d_val2 = 2; lmax = 256
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; d_val1 = 2; d_val2 = 4; lmax = 256
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 32; lmax = 0
   d_val1 = 1; d_val2 = 1
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; lmax = 0
   d_val1 = 1; d_val2 = 2
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; lmax = 0
   d_val1 = 1; d_val2 = 4
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; lmax = 0
   d_val1 = 4; d_val2 = 1
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; lmax = 0
   d_val2 = 2; d_val1 = 4
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; lmax = 0
   d_val1 = 4; d_val2 = 4
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; lmax = 0
   d_val1 = 2; d_val2 = 1
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; lmax = 0
   d_val1 = 2; d_val2 = 2
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; lmax = 0
   d_val1 = 2; d_val2 = 4
   call init_data_real_8(data1, data2); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_8(data1, data2); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 8 NG'
end subroutine test_execute_real_8

function test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   real(kind=16) :: flag1, flag2, flag3
   real(kind=16) :: d_val1, d_val2
   real(kind=16) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt1_real_16=0
         return
      end if
   end do
   test_pt1_real_16=1
   return
end function test_pt1_real_16

function test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, d_data1, d_data2)
   real(kind=16) :: flag1, flag2, flag3
   real(kind=16) :: d_val1, d_val2
   real(kind=16) , dimension(256) :: d_data1, d_data2
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .lt. flag2) then
         d_data1(i) = 1
      else if (flag1 .gt. flag2) then
         d_data1(i) = 2
      else
         d_data1(i) = 4
      end if
      if (flag1 .gt. flag3) then
         d_data2(i) = 1
      else if (flag1 .lt. flag3) then
         d_data2(i) = 2
      else
         d_data2(i) = 4
      end if
   end do
   do i=1, 256
      if (d_data1(i) .ne. d_val1 .or. d_data2(i) .ne. d_val2) then
         test_pt2_real_16=0
         return
      end if
   end do
   test_pt2_real_16=1
   return
end function test_pt2_real_16

subroutine init_data_real_16(data1, data2)
   real(kind=16) , dimension(256) :: data1, data2
   do i=1, 256
      data1(i) = 0
      data2(i) = 0
   end do
end subroutine init_data_real_16

subroutine test_execute_real_16
   real(kind=16) , dimension(256) :: data1, data2
   real(kind=16) :: flag1, flag2, flag3, d_val1, d_val2
   integer(kind=4) :: lmax

   flag1 = 64; flag2 = 96; flag3 = 32; d_val1 = 1; d_val2 = 1; lmax = 256
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; d_val1 = 1; d_val2 = 2; lmax = 256
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; d_val1 = 1; d_val2 = 4; lmax = 256
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; d_val1 = 4; d_val2 = 1; lmax = 256
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; d_val1 = 4; d_val2 = 2; lmax = 256
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; d_val1 = 4; d_val2 = 4; lmax = 256
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; d_val1 = 2; d_val2 = 1; lmax = 256
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; d_val1 = 2; d_val2 = 2; lmax = 256
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; d_val1 = 2; d_val2 = 4; lmax = 256
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 96; flag3 = 32; lmax = 0
   d_val1 = 1; d_val2 = 1
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 96; flag3 = 96; lmax = 0
   d_val1 = 1; d_val2 = 2
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 96; flag3 = 64; lmax = 0
   d_val1 = 1; d_val2 = 4
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 64; flag3 = 32; lmax = 0
   d_val1 = 4; d_val2 = 1
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 64; flag3 = 96; lmax = 0
   d_val2 = 2; d_val1 = 4
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 64; flag3 = 64; lmax = 0
   d_val1 = 4; d_val2 = 4
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 32; flag3 = 32; lmax = 0
   d_val1 = 2; d_val2 = 1
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 32; flag3 = 96; lmax = 0
   d_val1 = 2; d_val2 = 2
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 64; flag2 = 32; flag3 = 64; lmax = 0
   d_val1 = 2; d_val2 = 4
   call init_data_real_16(data1, data2); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
   d_val1 = 0; d_val2 = 0
   call init_data_real_16(data1, data2); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val1, d_val2, data1, data2); if ( result .eq. 0) print *, 'real 16 NG'
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
