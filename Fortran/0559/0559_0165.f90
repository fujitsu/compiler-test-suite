program main
  type ty(k)
    integer,kind::k = 2
    integer::i
    character::ch
  end type

  type,extends(ty):: ty1(k1)
    integer,kind::k1 = 3
   integer::j
  end type
  type(ty1(2,3))::ty1_obj = ty1(2,3)(4,'a',j=3)
  if(ty1_obj%i .eq. 4 .and. ty1_obj%ch .eq. 'a' .and. ty1_obj%j .eq.3)then
  print*,"PASS"
  else 
  print*,"ERROR"
  endif
end program

