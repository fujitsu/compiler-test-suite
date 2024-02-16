program main
  integer b(10)
  do i=1,10
     b(i) = ient(i)
  enddo

  do i=1,10
     if (b(i) .ne. i) then
        print *,"NG",b(i)
        stop
     end if
  enddo
  print *,"OK"
end program main

function ifunc(mm)
  ient = mm
  return;
  entry ient(mm)
  ient = mm
end function ifunc
