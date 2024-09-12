module mod_fun
 contains
  function fun() result(re1)
  entry ent() result(re1)
  integer re1,re2
  re1 = 1
  return
  entry ent2() result(re2)
  entry ent3() result(re2)
  re2 = 2
  return
  end function
end module

module mod_fun2
 contains
  integer function fun2()
  implicit integer(x)
  entry xx1()
  entry ent() result(xx2)
  fun2 = -2147483648
  end function
end

module mod_sub
 contains
 recursive function fun()
  entry ent() result(res)
  integer res
  res = 5548
 end function
 subroutine sub(error)
  integer error
  if (ent() /= 5548) error=error+1
 endsubroutine
end

program main
 integer :: error=0
 call checksub1(error)
 call checksub2(error)
 call checksub3(error)
 call checksub4(error)
 call checksub5(error)
 call checksub6(error)
 call checksub7(error)
 call checksub8(error)
 call checksub9(error)

 if (error /= 0) then
   print *,'+++ ',error,' items NG +++ '
 else
   print *,'*** pass ***'
 endif
end program

function fun() result(re1)
 entry ent1() result(re1)
 integer re1,re2
 re1 = 1
 return
 entry ent2() result(re2)
 entry ent3() result(re2)
 re2 = 2
 return
end

integer function fun2()
 implicit integer(x)
 entry xx1()
 entry ent() result(xx2)
 fun2 = -2147483648
end

subroutine checksub1(error)
 use mod_fun
 integer error
 if (fun() /= 1) error = error+1
 if (ent() /= 1) error = error+1
 if (ent2() /= 2) error = error+1
 if (ent3() /= 2) error = error+1
end subroutine

subroutine checksub2(error)
 integer error
 integer,external::fun,ent1,ent2,ent3
 if (fun() /= 1) error = error+1
 if (ent1() /= 1) error = error+1
 if (ent2() /= 2) error = error+1
 if (ent3() /= 2) error = error+1
end subroutine

subroutine checksub3(error)
 integer error
 real*16 a/1.0e0/,c,e
 real*16 b/1.0d0/,d,f
 parameter (c=1.0e0)
 parameter (d=1.0d0)
 e=1.0e0
 f=1.0d0
 if (a /=c .or. c/=e .or. e/=a) error = error+1
 if (b /=d .or. d/=f .or. f/=b) error = error+1
end subroutine

subroutine checksub4(error)
 integer error
 character a*2,format*3,res*3
1format(a)='1'
 if (format("aa") /= "1  ") error = error+1
 res = format("12")
 if (res /= "1  ") error = error+1
end subroutine

subroutine checksub5(error)
 use mod_fun2
 integer error
 if (fun2() /= -2147483648) error = error+1
 if (xx1() /= -2147483648) error = error+1
 if (ent() /= -2147483648) error = error+1
end subroutine

subroutine checksub6(error)
 integer error
 integer,external::fun2,xx1,ent
 if (fun2() /= -2147483648) error = error+1
 if (xx1() /= -2147483648) error = error+1
 if (ent() /= -2147483648) error = error+1
end subroutine

subroutine checksub7(error)
 use mod_sub,only : sub
 integer error
 call sub(error)
end subroutine

subroutine checksub8(error)
 integer error
 real*16       wdata1,rdata1
 real*16       wdata2,rdata2
 real*16       wdata3,rdata3
 parameter (wdata1 = -5.678901234123451230987609876098760987q-10)
 parameter (wdata2 = +5.678901234123451230987609876098760987q-10)
 parameter (wdata3 = 5.678901234123451230987609876098760987q-10)
 rdata1 = -5.678901234123451230987609876098760987q-10
 rdata2 = +5.678901234123451230987609876098760987q-10
 rdata3 = 5.678901234123451230987609876098760987q-10
 if (wdata1 /= rdata1) error = error + 1
 if (wdata2 /= rdata2) error = error + 1
 if (wdata3 /= rdata3) error = error + 1
end subroutine

subroutine checksub9(error)
 integer error
 integer i
 i = 0
 select case (i)
 end select
 select case (i)
  case (1)
1end select
 select case (i)
  case default
2end select
 select case (i)
3end select
 if (i /= 0) error = error + 1
end subroutine
