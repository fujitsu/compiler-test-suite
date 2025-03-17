function ff0() result(dd)
 complex(4)::dd(3,2)
  dd=cmplx(reshape((/1.,2.,3.,4.,5.,6./),(/3,2/)), &
           reshape((/6.,5.,4.,3.,2.,1./),(/3,2/)))
end function ff0

logical(4) function ff1(ee) 
 complex(4),intent(in)::ee(3,2)
  ff1=any(ee/=reshape((/(1.,6.),(2.,5.),(3.,4.), &
                        (4.,3.),(5.,2.),(6.,1.)/),(/3,2/)))
end function ff1

program main
 interface
  function ff0() result(dd)
   complex(4)::dd(3,2)
  end function ff0
 end interface
 complex(4)::cc(3,2)
 logical(4)::ll,ff1

  cc=ff0()
  ll=ff1(cc)
  if (ll) print *,'errror'
  print *,'pass'
end program main
