
        program main
	complex*8 C1(10)
	complex*8 C2(10)
	equivalence (C1,C2)
        complex*8 data1, ans1
        parameter (ans1=(0.0,0.0))
	do i=1,10
	  C1(i)=(0.0,0.0)*i
	  C2(i)=(0.0,0.0)*i
	  C2(i)=C1(i)+C2(i)
	enddo
        data1 = product(C1) + product(C2)
	do i=1,10
	  C1(i)=(0.0,0.0)*i
	  C2(i)=(0.0,0.0)*i
        enddo
        C2=C1+C2
        data1 = data1 + product(C1) + product(C2)

        if (data1 .eq. ans1) then
           print *,"OK"
        else
           print *,"NG"
        endif

	stop
	end
