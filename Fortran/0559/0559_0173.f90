program main
  type ty(k,k1)
     integer,kind::k,k1
     integer::i(5)
     character(len =5)::ch
  end type

  type(ty(8,6))::ty_obj = ty(8,6)((/1,2,3,4,5/),"abcde")
  
  if(ty_obj%i(5) .EQ. size(ty_obj%i)) then
  print*, 'PASS'
  else
  print*,'FAIL'
  endif
end program

