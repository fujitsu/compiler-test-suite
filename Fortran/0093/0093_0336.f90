complex :: cc(2) = [(2,3),(4,5)]
integer :: pp
  pp = ff(cc(2)%re) + ff(cc(2)%im)
  if(pp .ne. 9) print*,"121"
  if(cc(2)%re .ne. 4) print*,"122"
  if(cc(2)%im .ne. 5) print*,"123"
  print*,"Pass"
       
  contains
  function ff(bb)
    integer :: ff
    real,value :: bb
    ff = bb
    bb = bb + 2
  end function
end
