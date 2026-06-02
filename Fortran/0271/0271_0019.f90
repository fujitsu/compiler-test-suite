real(kind=2)::r2
call sub(r2)
if(r2 /= 1.5)print*,"102",r4
print*,"PASS"
contains
subroutine sub(res)
  real(kind=2)::res
  interface
     real(kind=2) function fun(c)
      complex(kind=2)::c
     end function fun
  end interface

  res = fun(cmplx((1.5_2,2.5_2),kind=2))
end subroutine sub

end     
 real(kind=2) function fun(c)
    complex(kind=2)::c
    fun=real(c)
 end function fun

