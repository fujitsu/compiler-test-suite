program main
integer,target :: i

class(*),pointer::cptr

i=1
cptr=>i

select case(i)
  case(1)
   selcons:do i = 1,1
    select type(cptr)
      type is(integer)
        print *,'PASS'
    end select
    cycle selcons
   end do selcons
  case default
      print *,"FAIL"
end select
end program
