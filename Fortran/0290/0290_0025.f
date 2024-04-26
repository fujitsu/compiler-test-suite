	block data
        common /com/r81,r82,r41,r42
	real*4 r41,r42
	real*8 r81,r82
	data r81/1.5/,r82/1.4/
	data r41/1.5/,r42/1.4/
	end
!
	program main
        common /com/r81,r82,r41,r42
	real*4 r41,r42
	real*8 r81,r82
	print *,anint(r41),anint(r42)
	print *,anint(r81),anint(r82)
	print *,anint(r41+1.0),anint(r42+1.0)
	print *,anint(r81+1.0),anint(r82+1.0)
	end
