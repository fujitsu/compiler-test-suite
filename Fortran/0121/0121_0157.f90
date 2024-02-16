program main
  integer b(10)

  b(1) = ient(1)
  b(2) = ient(2)
  b(3) = ient(3)
  b(4) = ient(4)
  b(5) = ient(5)
  b(6) = ient(6)
  b(7) = ient(7)
  b(8) = ient(8)
  b(9) = ient(9)
  b(10) = ient(10)

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
  ifunc = mm
end function ifunc
