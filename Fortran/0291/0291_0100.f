	recursive function sub(i) result(res1)
	common/com/i1,i2,i3
	common/chk/k1,k2
	complex res1
	complex t1,t2,t3
	i1=i1+1
	k=i
	if( i.ge.0 ) then
	  select case ( mod(i,3) )
	  case (0)
	    t1 = sub(i-1)
	    print *, t1
	  case (1)
	    t2 = foo(i-1)
	    print *, t2
	  case (2)
	    t3 = bar(i-1)
	    print *, t3
	  endselect
	endif
	res1=i
	contains 
	  recursive function foo(j) result(res2)
	  complex res2,t
	  i2=i2+1
	  k1=k1+k
	  if( j.ge.0 ) then
	    select case ( mod(j,3) )
	    case (0)
	      t = sub(j-1)
	      print *, t
	    case (1)
	      t = foo(j-1)
	      print *, t
	    case (2)
	      t = bar(j-1)
	      print *, t
	    endselect
	  endif
	  res2=i
	  end function
	  recursive function bar(n) result(res3)
	  complex res3,t
	  i3=i3+1
	  k2=k2+k
	  if( n.ge.0 ) then
	    select case ( mod(n,3) )
	    case (0)
	      t =  sub(n-1)
	      print *, t
	    case (1)
	      t =  foo(n-1)
	      print *, t
	    case (2)
	      t = bar(n-1)
	      print *, t
	    endselect
	  endif
	  res3=i
	  end function
	end function
	program main
	common/com/i1,i2,i3
	common/chk/k1,k2
	complex  sub,t
	t=sub(10)
	print *, t
        if( i1==5 .and. i2==4 .and. i3==3 ) then
          if( k1==25 .and. k2==15 ) then
            print *,' OK '
          else
            print *,' NG 2 '
          endif
        else
          print *,' NG 1 '
        endif
	end
	block data
	common/com/i1,i2,i3
	common/chk/k1,k2
	data i2/0/
	data k1/0/
	end
