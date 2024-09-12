    parameter(mode=64)
    parameter(nr=mode*2)
    ii=0
    do 10 ir=(2*nr-1)/2,1,-1
 10 ii=ii+1
    if (ii.eq.127) then
      print *,'pass'
    endif
    end
