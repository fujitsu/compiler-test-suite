  400 format ( a40, ': ', g24.10 )
  300 format ( g24.10 )
      write(1,400) "Significant digits (DIGITS)", digits(x)
      write(2,300) minexponent(x)
      write(2,300) maxexponent(x)
      write(1,*) "Minimum exponent (MINEXPONENT)", minexponent(x)
      write(1,*) "Maximum exponent (MAXEXPONENT)", maxexponent(x)
call chk

print *,'pass'
end
subroutine chk
character(100) x
rewind 2
read(2,'(a)') x
if (adjustl(x)/='-125') print *,201,x
read(2,'(a)') x
if (adjustl(x)/='128') print *,202,x
end
