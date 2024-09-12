program main
  type ty(k,k2)
    integer,kind::k,k2 =2
    integer::i(2)
    character::ch
  end type
  type ty1
   integer::j(2)
   type(ty(k=4))::ty_obj = ty(4)((/10,20/),'p')
  end type
  type(ty1)::ty1_obj = ty1(j=(/3,4/),ty_obj=ty(4)((/10,20/),'p'))

  if(ty1_obj%ty_obj%ch .EQ. 'p') then
  print*, 'PASS'
else
  print*,'FAIL'
endif

end program

