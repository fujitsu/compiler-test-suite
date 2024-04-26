	program pointer_test
	implicit integer ( t ) 
	print *,' POINTER TEST '
	print *, test1()
	print *, test2()
	print *, test3()
	print *, test4()
	print *, test5()
	end
	integer function test1()
	pointer( ip, ib )
	integer,dimension(10)::i
	i=1
	ip = loc(i(5))
	do ii=1,10
	  i(ii) = i(ii) + ib
        end do
	test1 = i(9)
	end
	integer function test2()
	pointer( ip, ib )
	integer,dimension(10)::i
	i=1
	ip = loc(i)
	do ii=1,10
	  ib = ib + i(5)
	  ip = ip + 4                 
        end do
	test2 = i(9)
	end
	integer function test3()
	pointer( ip, ib )
	integer,dimension(10)::i
	integer,dimension(10)::j
	equivalence ( i , j )
	i=1
	ip = loc(i(5))
	do ii=1,10
	  j(ii) = j(ii) + ib
        end do
	test3 = i(9)
	end
	integer function test4()
	pointer( ip, ib )
	integer,dimension(10)::i
	integer,dimension(10)::j
	equivalence ( i , j )
	i=1
	ip = loc(i)
	do ii=1,10
	  ib = ib + j(5)
	  ip = ip + 4                 
        end do
	test4 = i(9)
	end
	integer function test5()
	pointer( ip, ib )
	pointer( jp, jb )
	integer,dimension(10)::i
	integer,dimension(10)::j
	i=1
	j=1
	ip = loc(i)
	jp = loc(j)
	do ii=1,10
	  ib = ib + 1
	  ip = ip + 4                 
	  jb = jb + 1
	  jp = jp + 4                 
        end do
	test5 = i(9)+j(9)
	end
