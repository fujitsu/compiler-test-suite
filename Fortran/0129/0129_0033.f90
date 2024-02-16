
subroutine test01(a, b)
  complex(16) :: a(2),b(2)
  a(1) = b(1)
  a(2) = b(2)
  if (a(1) .eq. b(1)) then
    write(6,*) "OK1"
  else
    write(6,*) "NG1"
  endif
  if (a(2) .eq. b(2)) then
    write(6,*) "OK2"
  else
    write(6,*) "NG2"
  endif
end subroutine

program main
  complex(16)::a(2), b(2)
  Do i=1, 2
     a(i) = i
     b(i) = i
  Enddo
  call test01(a, b)
end program
