function kf(nf,n) 
interface
  pure function nf() 
  end function
end interface
integer :: n( nf() )
kf=1
 if (size( n ) /=2 ) print *,201
end 

interface
  pure function nf() 
  end function
end interface
integer :: n( 2    )
if (kf( nf ,n) /= 1) print *,101 
print *,'pass'
end

  pure function nf() 
   nf=2
  end function
