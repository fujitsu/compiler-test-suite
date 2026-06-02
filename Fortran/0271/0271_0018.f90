real(kind=2)::r2
call sub(r2)
if(r2 /= 1.5)print*,"102",r4
print*,"PASS"
contains
subroutine sub(res)
  real(kind=2)::res
  interface
    subroutine sub2(c,r2)
      complex(kind=2)::c
      real(kind=2)::r2
     end subroutine sub2
  end interface

  call sub2(cmplx((1.5_2,2.5_2),kind=2),res)
end subroutine sub

end     
 subroutine sub2(c,r2)
    complex(kind=2)::c
    real(kind=2)::r2
    r2=real(c)
 end subroutine sub2

