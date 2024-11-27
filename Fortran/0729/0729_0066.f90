  character (len=40) :: format
  integer, dimension(6) :: a = (/ 1, 3, 10, 7314, 6222, 50 /)

  write( format, "(A,6(A,I1),A)" ) "(", ("I", int(log10(real(a(i))))+1, i=1,6), ")"
  write(1, *) format
  write(1, format) (a(i), i=1,6)
rewind 1
call s
end
subroutine s
character*20 r
read(1,'(a)')r
if (r/=' (I1I1I2I4I4I2)')write(6,*) "NG"
read(1,'(a)')r
if (r/='13107314622250')write(6,*) "NG"
print *,'pass'
end
