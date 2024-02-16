program main
  integer b(10),zzz
  do i=1,10
     b(i) = ient(i)
     do j=1,10
        zzz = i+j
     end do
  enddo

  do i=1,10
     if ((b(i) .ne. i) .or. (zzz .ne. 20)) then
        print *,"NG",b(i),zzz
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
