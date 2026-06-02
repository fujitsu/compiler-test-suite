
function test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=1) :: flag1, flag2, flag3
   integer(kind=1) :: d_val, calc_d_val
   integer(kind=1) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt1_integer_1=0
         return
      end if
   end do
   test_pt1_integer_1=1
   return
end function test_pt1_integer_1

function test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=1) :: flag1, flag2, flag3
   integer(kind=1) :: d_val, calc_d_val
   integer(kind=1) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
print *, d_data(i), calc_d_val, flag1, flag2, flag3, d_val
         test_pt2_integer_1=0
         return
      end if
   end do
   test_pt2_integer_1=1
   return
end function test_pt2_integer_1

function test_pt3_integer_1(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=1) :: flag1, flag2, flag3
   integer(kind=1) :: d_val, calc_d_val
   integer(kind=1) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt3_integer_1=0
         return
      end if
   end do
   test_pt3_integer_1=1
   return
end function test_pt3_integer_1

function test_pt4_integer_1(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=1) :: flag1, flag2, flag3
   integer(kind=1) :: d_val, calc_d_val
   integer(kind=1) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt4_integer_1=0
         return
      end if
   end do
   test_pt4_integer_1=1
   return
end function test_pt4_integer_1

subroutine init_data_integer_1(data)
   integer(kind=1) , dimension(256) :: data
   do i=1, 256
      data(i) = 0
   end do
end subroutine init_data_integer_1

subroutine test_execute_integer_1
   integer(kind=1) , dimension(256) :: data
   integer(kind=1) :: flag1, flag2, flag3, d_val
   integer(kind=4) :: lmax

   flag1 = 2; flag2 = 1; flag3 = 0; d_val = 1; lmax = 256
   call init_data_integer_1(data); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt3_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt4_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 256
   call init_data_integer_1(data); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt3_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt4_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 256
   call init_data_integer_1(data); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt3_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt4_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 2; flag2 = 1; flag3 = 0; lmax = 0
   d_val = 1
   call init_data_integer_1(data); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt3_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val = 0
   call init_data_integer_1(data); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt4_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 0
   call init_data_integer_1(data); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt3_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val = 0
   call init_data_integer_1(data); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt4_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 0
   call init_data_integer_1(data); result = test_pt1_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt3_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   d_val = 0
   call init_data_integer_1(data); result = test_pt2_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
   call init_data_integer_1(data); result = test_pt4_integer_1(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 1 NG'
end subroutine test_execute_integer_1

function test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=2) :: flag1, flag2, flag3
   integer(kind=2) :: d_val, calc_d_val
   integer(kind=2) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt1_integer_2=0
         return
      end if
   end do
   test_pt1_integer_2=1
   return
end function test_pt1_integer_2

function test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=2) :: flag1, flag2, flag3
   integer(kind=2) :: d_val, calc_d_val
   integer(kind=2) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
print *, d_data(i), calc_d_val, flag1, flag2, flag3, d_val
         test_pt2_integer_2=0
         return
      end if
   end do
   test_pt2_integer_2=1
   return
end function test_pt2_integer_2

function test_pt3_integer_2(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=2) :: flag1, flag2, flag3
   integer(kind=2) :: d_val, calc_d_val
   integer(kind=2) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt3_integer_2=0
         return
      end if
   end do
   test_pt3_integer_2=1
   return
end function test_pt3_integer_2

function test_pt4_integer_2(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=2) :: flag1, flag2, flag3
   integer(kind=2) :: d_val, calc_d_val
   integer(kind=2) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt4_integer_2=0
         return
      end if
   end do
   test_pt4_integer_2=1
   return
end function test_pt4_integer_2

subroutine init_data_integer_2(data)
   integer(kind=2) , dimension(256) :: data
   do i=1, 256
      data(i) = 0
   end do
end subroutine init_data_integer_2

subroutine test_execute_integer_2
   integer(kind=2) , dimension(256) :: data
   integer(kind=2) :: flag1, flag2, flag3, d_val
   integer(kind=4) :: lmax

   flag1 = 2; flag2 = 1; flag3 = 0; d_val = 1; lmax = 256
   call init_data_integer_2(data); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt3_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt4_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 256
   call init_data_integer_2(data); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt3_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt4_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 256
   call init_data_integer_2(data); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt3_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt4_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 2; flag2 = 1; flag3 = 0; lmax = 0
   d_val = 1
   call init_data_integer_2(data); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt3_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val = 0
   call init_data_integer_2(data); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt4_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 0
   call init_data_integer_2(data); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt3_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val = 0
   call init_data_integer_2(data); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt4_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 0
   call init_data_integer_2(data); result = test_pt1_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt3_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   d_val = 0
   call init_data_integer_2(data); result = test_pt2_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
   call init_data_integer_2(data); result = test_pt4_integer_2(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 2 NG'
end subroutine test_execute_integer_2

function test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=4) :: flag1, flag2, flag3
   integer(kind=4) :: d_val, calc_d_val
   integer(kind=4) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt1_integer_4=0
         return
      end if
   end do
   test_pt1_integer_4=1
   return
end function test_pt1_integer_4

function test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=4) :: flag1, flag2, flag3
   integer(kind=4) :: d_val, calc_d_val
   integer(kind=4) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
print *, d_data(i), calc_d_val, flag1, flag2, flag3, d_val
         test_pt2_integer_4=0
         return
      end if
   end do
   test_pt2_integer_4=1
   return
end function test_pt2_integer_4

function test_pt3_integer_4(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=4) :: flag1, flag2, flag3
   integer(kind=4) :: d_val, calc_d_val
   integer(kind=4) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt3_integer_4=0
         return
      end if
   end do
   test_pt3_integer_4=1
   return
end function test_pt3_integer_4

function test_pt4_integer_4(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=4) :: flag1, flag2, flag3
   integer(kind=4) :: d_val, calc_d_val
   integer(kind=4) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt4_integer_4=0
         return
      end if
   end do
   test_pt4_integer_4=1
   return
end function test_pt4_integer_4

subroutine init_data_integer_4(data)
   integer(kind=4) , dimension(256) :: data
   do i=1, 256
      data(i) = 0
   end do
end subroutine init_data_integer_4

subroutine test_execute_integer_4
   integer(kind=4) , dimension(256) :: data
   integer(kind=4) :: flag1, flag2, flag3, d_val
   integer(kind=4) :: lmax

   flag1 = 2; flag2 = 1; flag3 = 0; d_val = 1; lmax = 256
   call init_data_integer_4(data); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt3_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt4_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 256
   call init_data_integer_4(data); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt3_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt4_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 256
   call init_data_integer_4(data); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt3_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt4_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 2; flag2 = 1; flag3 = 0; lmax = 0
   d_val = 1
   call init_data_integer_4(data); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt3_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val = 0
   call init_data_integer_4(data); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt4_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 0
   call init_data_integer_4(data); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt3_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val = 0
   call init_data_integer_4(data); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt4_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 0
   call init_data_integer_4(data); result = test_pt1_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt3_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   d_val = 0
   call init_data_integer_4(data); result = test_pt2_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
   call init_data_integer_4(data); result = test_pt4_integer_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 4 NG'
end subroutine test_execute_integer_4

function test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=8) :: flag1, flag2, flag3
   integer(kind=8) :: d_val, calc_d_val
   integer(kind=8) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt1_integer_8=0
         return
      end if
   end do
   test_pt1_integer_8=1
   return
end function test_pt1_integer_8

function test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=8) :: flag1, flag2, flag3
   integer(kind=8) :: d_val, calc_d_val
   integer(kind=8) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
print *, d_data(i), calc_d_val, flag1, flag2, flag3, d_val
         test_pt2_integer_8=0
         return
      end if
   end do
   test_pt2_integer_8=1
   return
end function test_pt2_integer_8

function test_pt3_integer_8(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=8) :: flag1, flag2, flag3
   integer(kind=8) :: d_val, calc_d_val
   integer(kind=8) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt3_integer_8=0
         return
      end if
   end do
   test_pt3_integer_8=1
   return
end function test_pt3_integer_8

function test_pt4_integer_8(flag1, flag2, flag3, lmax, d_val, d_data)
   integer(kind=8) :: flag1, flag2, flag3
   integer(kind=8) :: d_val, calc_d_val
   integer(kind=8) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt4_integer_8=0
         return
      end if
   end do
   test_pt4_integer_8=1
   return
end function test_pt4_integer_8

subroutine init_data_integer_8(data)
   integer(kind=8) , dimension(256) :: data
   do i=1, 256
      data(i) = 0
   end do
end subroutine init_data_integer_8

subroutine test_execute_integer_8
   integer(kind=8) , dimension(256) :: data
   integer(kind=8) :: flag1, flag2, flag3, d_val
   integer(kind=4) :: lmax

   flag1 = 2; flag2 = 1; flag3 = 0; d_val = 1; lmax = 256
   call init_data_integer_8(data); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt3_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt4_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 256
   call init_data_integer_8(data); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt3_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt4_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 256
   call init_data_integer_8(data); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt3_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt4_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 2; flag2 = 1; flag3 = 0; lmax = 0
   d_val = 1
   call init_data_integer_8(data); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt3_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val = 0
   call init_data_integer_8(data); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt4_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 0
   call init_data_integer_8(data); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt3_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val = 0
   call init_data_integer_8(data); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt4_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 0
   call init_data_integer_8(data); result = test_pt1_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt3_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   d_val = 0
   call init_data_integer_8(data); result = test_pt2_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
   call init_data_integer_8(data); result = test_pt4_integer_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'integer 8 NG'
end subroutine test_execute_integer_8

function test_pt1_real_4(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=4) :: flag1, flag2, flag3
   real(kind=4) :: d_val, calc_d_val
   real(kind=4) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt1_real_4=0
         return
      end if
   end do
   test_pt1_real_4=1
   return
end function test_pt1_real_4

function test_pt2_real_4(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=4) :: flag1, flag2, flag3
   real(kind=4) :: d_val, calc_d_val
   real(kind=4) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
print *, d_data(i), calc_d_val, flag1, flag2, flag3, d_val
         test_pt2_real_4=0
         return
      end if
   end do
   test_pt2_real_4=1
   return
end function test_pt2_real_4

function test_pt3_real_4(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=4) :: flag1, flag2, flag3
   real(kind=4) :: d_val, calc_d_val
   real(kind=4) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt3_real_4=0
         return
      end if
   end do
   test_pt3_real_4=1
   return
end function test_pt3_real_4

function test_pt4_real_4(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=4) :: flag1, flag2, flag3
   real(kind=4) :: d_val, calc_d_val
   real(kind=4) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt4_real_4=0
         return
      end if
   end do
   test_pt4_real_4=1
   return
end function test_pt4_real_4

subroutine init_data_real_4(data)
   real(kind=4) , dimension(256) :: data
   do i=1, 256
      data(i) = 0
   end do
end subroutine init_data_real_4

subroutine test_execute_real_4
   real(kind=4) , dimension(256) :: data
   real(kind=4) :: flag1, flag2, flag3, d_val
   integer(kind=4) :: lmax

   flag1 = 2; flag2 = 1; flag3 = 0; d_val = 1; lmax = 256
   call init_data_real_4(data); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt3_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt4_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 256
   call init_data_real_4(data); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt3_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt4_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 256
   call init_data_real_4(data); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt3_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt4_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 2; flag2 = 1; flag3 = 0; lmax = 0
   d_val = 1
   call init_data_real_4(data); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt3_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   d_val = 0
   call init_data_real_4(data); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt4_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 0
   call init_data_real_4(data); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt3_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   d_val = 0
   call init_data_real_4(data); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt4_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 0
   call init_data_real_4(data); result = test_pt1_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt3_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   d_val = 0
   call init_data_real_4(data); result = test_pt2_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
   call init_data_real_4(data); result = test_pt4_real_4(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 4 NG'
end subroutine test_execute_real_4

function test_pt1_real_8(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=8) :: flag1, flag2, flag3
   real(kind=8) :: d_val, calc_d_val
   real(kind=8) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt1_real_8=0
         return
      end if
   end do
   test_pt1_real_8=1
   return
end function test_pt1_real_8

function test_pt2_real_8(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=8) :: flag1, flag2, flag3
   real(kind=8) :: d_val, calc_d_val
   real(kind=8) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
print *, d_data(i), calc_d_val, flag1, flag2, flag3, d_val
         test_pt2_real_8=0
         return
      end if
   end do
   test_pt2_real_8=1
   return
end function test_pt2_real_8

function test_pt3_real_8(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=8) :: flag1, flag2, flag3
   real(kind=8) :: d_val, calc_d_val
   real(kind=8) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt3_real_8=0
         return
      end if
   end do
   test_pt3_real_8=1
   return
end function test_pt3_real_8

function test_pt4_real_8(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=8) :: flag1, flag2, flag3
   real(kind=8) :: d_val, calc_d_val
   real(kind=8) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt4_real_8=0
         return
      end if
   end do
   test_pt4_real_8=1
   return
end function test_pt4_real_8

subroutine init_data_real_8(data)
   real(kind=8) , dimension(256) :: data
   do i=1, 256
      data(i) = 0
   end do
end subroutine init_data_real_8

subroutine test_execute_real_8
   real(kind=8) , dimension(256) :: data
   real(kind=8) :: flag1, flag2, flag3, d_val
   integer(kind=4) :: lmax

   flag1 = 2; flag2 = 1; flag3 = 0; d_val = 1; lmax = 256
   call init_data_real_8(data); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt3_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt4_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 256
   call init_data_real_8(data); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt3_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt4_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 256
   call init_data_real_8(data); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt3_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt4_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 2; flag2 = 1; flag3 = 0; lmax = 0
   d_val = 1
   call init_data_real_8(data); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt3_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   d_val = 0
   call init_data_real_8(data); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt4_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 0
   call init_data_real_8(data); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt3_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   d_val = 0
   call init_data_real_8(data); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt4_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 0
   call init_data_real_8(data); result = test_pt1_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt3_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   d_val = 0
   call init_data_real_8(data); result = test_pt2_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
   call init_data_real_8(data); result = test_pt4_real_8(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 8 NG'
end subroutine test_execute_real_8

function test_pt1_real_16(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=16) :: flag1, flag2, flag3
   real(kind=16) :: d_val, calc_d_val
   real(kind=16) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt1_real_16=0
         return
      end if
   end do
   test_pt1_real_16=1
   return
end function test_pt1_real_16

function test_pt2_real_16(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=16) :: flag1, flag2, flag3
   real(kind=16) :: d_val, calc_d_val
   real(kind=16) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (flag1 .gt. flag2) then
         d_data(i) = 1
      else if (i .lt. flag3) then
         d_data(i) = 2
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
print *, d_data(i), calc_d_val, flag1, flag2, flag3, d_val
         test_pt2_real_16=0
         return
      end if
   end do
   test_pt2_real_16=1
   return
end function test_pt2_real_16

function test_pt3_real_16(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=16) :: flag1, flag2, flag3
   real(kind=16) :: d_val, calc_d_val
   real(kind=16) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, 256
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt3_real_16=0
         return
      end if
   end do
   test_pt3_real_16=1
   return
end function test_pt3_real_16

function test_pt4_real_16(flag1, flag2, flag3, lmax, d_val, d_data)
   real(kind=16) :: flag1, flag2, flag3
   real(kind=16) :: d_val, calc_d_val
   real(kind=16) , dimension(256) :: d_data
   integer(kind=4) :: lmax
   do i=1, lmax
      if (i .lt. flag3) then
         d_data(i) = 2
      else if (flag1 .gt. flag2) then
         d_data(i) = 1
      else
         d_data(i) = 4
      end if
   end do
   do i=1, 256
      if (lmax .gt. 0 .and. i .lt. flag3) then
         calc_d_val = 2
      else
         calc_d_val = d_val
      endif
      if (d_data(i) .ne. calc_d_val) then
         test_pt4_real_16=0
         return
      end if
   end do
   test_pt4_real_16=1
   return
end function test_pt4_real_16

subroutine init_data_real_16(data)
   real(kind=16) , dimension(256) :: data
   do i=1, 256
      data(i) = 0
   end do
end subroutine init_data_real_16

subroutine test_execute_real_16
   real(kind=16) , dimension(256) :: data
   real(kind=16) :: flag1, flag2, flag3, d_val
   integer(kind=4) :: lmax

   flag1 = 2; flag2 = 1; flag3 = 0; d_val = 1; lmax = 256
   call init_data_real_16(data); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt3_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt4_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 256
   call init_data_real_16(data); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt3_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt4_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 256
   call init_data_real_16(data); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt3_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt4_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 2; flag2 = 1; flag3 = 0; lmax = 0
   d_val = 1
   call init_data_real_16(data); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt3_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   d_val = 0
   call init_data_real_16(data); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt4_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 1; flag2 = 2; flag3 = 32; d_val = 4; lmax = 0
   call init_data_real_16(data); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt3_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   d_val = 0
   call init_data_real_16(data); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt4_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'

   flag1 = 1; flag2 = 2; flag3 = 0; d_val = 4; lmax = 0
   call init_data_real_16(data); result = test_pt1_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt3_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   d_val = 0
   call init_data_real_16(data); result = test_pt2_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
   call init_data_real_16(data); result = test_pt4_real_16(flag1, flag2, flag3, lmax, d_val, data); if ( result .eq. 0) print *, 'real 16 NG'
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
