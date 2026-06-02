implicit none
associate( k=> 2)
 block
  character,dimension(1) ::arr(k)
  arr(1)='a'
  arr(2)='b'
   write(18,*) arr(2)
  if (arr(1)/='a') print *,700,arr(1)
  if (arr(2)/='b') print *,800,arr(2)
 end block
end associate
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call sub6()
print *,'snfm0019 : pass'
end

subroutine sub1()
implicit none
save
associate( k=> 2)
 block
  character,dimension(1) ::arr(k)*(2)
  arr(1)(1:2)='a1'
  arr(2)(1:2)='b1'
   write(18,*) arr(2)
  if (arr(1)/='a1') print *,700,arr(1)
  if (arr(2)/='b1') print *,800,arr(2)
 end block
end associate
end
subroutine sub2()
implicit none
save
associate( k=> 2)
 block
  character,dimension(k) ::arr*(2)
  arr(1)(1:2)='a1'
  arr(2)(1:2)='b1'
   write(18,*) arr(2)
  if (arr(1)/='a1') print *,700,arr(1)
  if (arr(2)/='b1') print *,800,arr(2)
 end block
end associate
end
subroutine sub3()
implicit none
save
associate( k=> 2)
 block
  character(2),dimension(k) ::arr
  arr(1)(1:2)='a1'
  arr(2)(1:2)='b1'
   write(18,*) arr(2)
  if (arr(1)/='a1') print *,700,arr(1)
  if (arr(2)/='b1') print *,800,arr(2)
 end block
end associate
end
subroutine sub4()
implicit none
save
associate( k=> 2)
 block
  character(2),dimension(k) ::arr*(2)
  arr(1)(1:2)='a1'
  arr(2)(1:2)='b1'
   write(18,*) arr(2)
  if (arr(1)/='a1') print *,700,arr(1)
  if (arr(2)/='b1') print *,800,arr(2)
 end block
end associate
end
subroutine sub5()
implicit none
save
associate( k=> 2)
 block
  character(len=2),dimension(k) ::arr
  arr(1)(1:2)='a1'
  arr(2)(1:2)='b1'
   write(18,*) arr(2)
  if (arr(1)/='a1') print *,700,arr(1)
  if (arr(2)/='b1') print *,800,arr(2)
 end block
end associate
end
subroutine sub6()
implicit none
save
associate( k=> 2)
 block
  character(len=2),dimension(k) ::arr*(2)
  arr(1)(1:2)='a1'
  arr(2)(1:2)='b1'
   write(18,*) arr(2)
  if (arr(1)/='a1') print *,700,arr(1)
  if (arr(2)/='b1') print *,800,arr(2)
 end block
end associate
end
