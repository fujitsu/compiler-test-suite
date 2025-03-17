program main
 complex(4):: cc(3,2)

  cc=cmplx(reshape((/1.,2.,3.,4.,5.,6./),(/3,2/)), &
           reshape((/6.,5.,4.,3.,2.,1./),(/3,2/)))
  if (any(cc/=reshape((/(1.,6.),(2.,5.),(3.,4.), &
                        (4.,3.),(5.,2.),(6.,1.)/),(/3,2/)))) &
                    print *,'error ',cc
  print *,'pass'
end
