	program pointer_test
	implicit integer ( t ) 
	print *,' POINTER TEST '
	print *, test1()
	print *, test2()
	print *, test3(10)
	print *, test4(5)
	print *, test5()
	print *, test6()
	print *, test7()
	end
	integer function test1()
	pointer( ip, ib )
	i=1
	ip = loc(i)
	test1 = -ib
	end
	integer function test2()
	pointer( ip, ib )
	integer i(10)
	ip = loc(i)
	do ii=1,10
	  ib = ii
	  ip = ip + 4
        enddo
	ip = loc(i)+4
	test2 = -ib
	end
	integer function test3(i)
	pointer( ip, ib )
	ip = loc(i)
	test3 = ib
	end
	integer function test4(r)
	pointer( ip, ib )
	ip = loc(r)
	test4 = ib
	end
	integer function test5()
	pointer( ip, ib )
	pointer( jp, jb )
	equivalence( ip,jp )
	i=1
	j=2
	ip = loc(i)
	jp = loc(j)
	test5 = ib
	end
	integer function test6()

	integer*8 ib,jb,kb,ip,jp,kp,j,i

	pointer( ip, ib )
	pointer( jp, jb )
	pointer( kp, kb )
	kp = loc(ip)
	j=2
	jp = loc(j)
	i=1
	ip = loc(i)
	kb = jp
	test6 = ib
	end
	integer function test7()
	pointer( ip, ib )
	equivalence ( r , i )
	ip = loc(i)
	i = 2
	r = 1
	test7 = ib
	end
