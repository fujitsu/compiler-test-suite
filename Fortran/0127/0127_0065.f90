program main
  integer*8 array_def(100), array_ref1(100), array_ref2(100)
  integer*8 i
  
  do i=1,100
     array_ref1(i) = i
     array_ref2(i) = i+1
  end do

  call sub(array_ref1, array_ref2, array_def)
  
  if (array_def(10) == 22) then
     print *,"OK"
  else
     print *,"NG",array_def(10)
  end if
  contains
    subroutine sub(array_ref1, array_ref2, array_def)
      integer*8 array_def(100), array_ref1(100), array_ref2(100)
      integer*8 i
      do i=1,100
         array_ref1(1) = array_ref2(i)
         if (array_ref1(1) > 0) then
            array_def(i) = array_ref1(1) + array_ref2(i)
         else
            array_def(i) = 0
         end if
      end do
    end subroutine sub
end program main

