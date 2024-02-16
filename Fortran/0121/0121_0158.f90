program main
  integer b(10)

  b(1) = ifunc(1)
  b(2) = ifunc(2)
  b(3) = ifunc(3)
  b(4) = ifunc(4)
  b(5) = ifunc(5)
  b(6) = ifunc(6)
  b(7) = ifunc(7)
  b(8) = ifunc(8)
  b(9) = ifunc(9)
  b(10) = ifunc(10)

  do i=1,10
     if (b(i) .ne. i) then
        print *,"NG",b(i)
        stop
     end if
  enddo
  print *,"OK"
end program main

function ifunc(mm)
  entry ient(mm)
  ient = mm
end function ifunc
