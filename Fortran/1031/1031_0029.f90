     complex,target:: i(3)
     complex,pointer:: p(:)
     i=(/(1,2),(3,4),(5,6)/)
     p=>i(1:2)
     i(2:3)=p
     if (any(abs((/p,i(3)/)-(/(1.,2.),(1.,2.),(3.,4.)/))>0.0001))print *,'error'
     print *,'pass'
     end
