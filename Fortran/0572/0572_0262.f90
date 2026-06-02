integer::arr(4),brr(5)
call sub(arr,brr)

contains
subroutine sub(xx,yy)
  type(*) :: xx(..)
  type(*) :: yy(:)
  call sub2(xx,yy)
end subroutine sub

subroutine sub2(aa,bb)
  type(*) :: aa(..)
  type(*) :: bb(..)

 if(rank(aa)/=1)print*,101
 if(rank(bb)/=1)print*,102

print*,"pass"
  
  
 
end subroutine sub2

end
