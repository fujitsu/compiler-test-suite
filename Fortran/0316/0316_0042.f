      type tag1
	integer   i
	integer   j
      end type
      type tag2
	integer   p
	integer   q
      end type
      type tag
        type (tag1) :: t1
        type (tag2) :: t2
      end type

      type (tag) ::t,tt
      parameter(tt=tag(tag1(10,20),tag2(100,200)))
      data t /tt/
      call check(t%t1%i,tt%t1%i)
      call check(t%t1%j,tt%t1%j)
      call check(t%t2%p,tt%t2%p)
      call check(t%t2%q,tt%t2%q)
      print *,'** OK **'
      end

      subroutine check(i,ii)
      if (i.ne.ii) then
         print *,'?? NG ??'
         stop
      endif
      end
