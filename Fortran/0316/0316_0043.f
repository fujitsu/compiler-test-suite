      type tag1
	integer   i
	integer   j
      end type
      type tag2
	integer   p
	integer   q
      end type
      type tag
        type (tag1) :: t1(2)
        type (tag2) :: t2(2)
      end type

      type (tag) ::t
      type (tag) ::tt
      parameter ( tt=tag(tag1(10,20),tag2(100,200)) )
      data t /tag(tag1(10,20),tag2(100,200))/
      do n=1,2
        call check(t%t1(n)%i,tt%t1(n)%i)
        call check(t%t1(n)%j,tt%t1(n)%j)
        call check(t%t2(n)%p,tt%t2(n)%p)
        call check(t%t2(n)%q,tt%t2(n)%q)
      enddo
      print *,'** OK **'
      end

      subroutine check(i,ii)
      if (i.ne.ii) then
         print *,'?? NG ??'
         stop
      endif
      end
