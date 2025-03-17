program main
  implicit none
  type :: fraction
	integer :: numerator,denominator
  end type fraction
  type (fraction) :: a,b,c
	a=fraction(1,2)
	b=fraction(1,3)
	c%denominator=a%denominator*b%denominator
	c%numerator=a%numerator*b%denominator+b%numerator*a%denominator
	write(*,'(1x,i2,a,i2,a)') a%numerator,' /',a%denominator,' +'
	write(*,'(1x,i2,a,i2,a)') b%numerator,' /',b%denominator,' ='
	write(*,'(1x,i2,a,i2,a)') c%numerator,' /',c%denominator
        print *,"pass"
	stop
end program main
