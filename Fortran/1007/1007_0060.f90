program main
  character(2) :: sum
  integer :: i,go=0,ii
  integer,dimension(100) :: te=(/ (i,i=1,100) /),fe

!$OMP parallel do
  do ii=1,100
     sum = "ab"
     fe(ii) = te(ii) + ichar(sum)
  end do
!$OMP end parallel do

  do i=1,100
     if(fe(i) /= i+ichar("ab")) then
        write(*,*)fe(i)
     end if
     go = go + fe(i)
  end do

  write(*,*)go,"'ok'"
end program main

