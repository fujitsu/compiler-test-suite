subroutine sub()
  call s1()
 contains
 subroutine  inn()
    print*,"PASS"
 end
 subroutine  inn2()
    print*,"pass"
 end
 function fun(f,f2) result(res)
      procedure(inn),pointer,intent(in):: f
      procedure(inn),pointer,intent(in):: f2
      integer::res
      call f()
      call f2()
      res =12
  end function
 subroutine s1()
  integer::x
  x = fun(inn2,inn)
  if(x.ne.12)print*,"101"
 end
 end
call sub()
 print*,"PASS"
 end

