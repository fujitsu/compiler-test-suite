program main
  integer a(10),b(10),c(10)
  do i=1,10
     a(i) = ient(i)
     b(i) = ient(i) + 1
     c(i) = ient(i) + 2
  enddo

  do i=1,10
     if ((a(i) .ne. i) .or. (b(i) .ne. i+1) .or. (c(i) .ne. i+2)) then
        print *,"NG",a(i),b(i),c(i)
        stop
     end if
  enddo
  print *,"OK"
end program main

function ifunc(mm)
  entry ient(mm)
  ient = mm
end function ifunc
