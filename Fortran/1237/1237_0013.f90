call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
call sub08()
print *,'snfm0031 : pass'
end

subroutine sub01()
implicit none
associate( k=> 3,kk=>1)
 block
  integer::brr(kk,k),arr(kk,k)
  arr(1,1)=1
  arr(1,2)=2
  arr(1,3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(29,*) arr(1,2)
  if (arr(1,1)/=1) print *,700,arr(1,1)
  if (arr(1,2)/=2) print *,800,arr(1,2)
  if (arr(1,3)/=3) print *,900,arr(1,3)
  brr(1,1)=1
  brr(1,2)=2
  brr(1,3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(29,*) brr(1,2)
  if (brr(1,1)/=1) print *,700,brr(1,1)
  if (brr(1,2)/=2) print *,800,brr(1,2)
  if (brr(1,3)/=3) print *,900,brr(1,3)
 end block
end associate
end
subroutine sub02()
implicit none
associate( k=> 3)
associate( kk=> 3)
 block
  integer::arr(k),brr(kk)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(29,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(29,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end associate
end

subroutine sub03()
implicit none
associate( k=> 3)
associate( kk=> 3)
 block
  integer::arr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(29,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
block
  integer::brr(kk)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(29,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
end block
 end block
end associate
end associate
end


subroutine sub04()
implicit none
associate( k=> 3)
associate( kk=> 3)
 block
  integer::xrr(1),arr(k),brr(kk)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(29,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(29,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end associate
end

subroutine sub05()
implicit none
associate( k=> 3)
associate( kk=> 3)
 block
  integer::arr(k),xrr(1),brr(kk)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(29,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(29,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end associate
end

subroutine sub06()
implicit none
associate( k=> 3)
associate( kk=> 3)
 block
  integer::arr(k),brr(kk),xrr(1)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(29,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(29,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end associate
end

subroutine sub07()
implicit none
associate( k=> 3)
associate( kk=> 3)
 block
  integer::arr(k),xrr(1),brr(kk),yrr(1)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(29,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(29,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end associate
end

subroutine sub08()
implicit none
associate( k=> 3)
associate( kk=> 3)
 block
  integer::xrr(1),arr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(29,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
block
block
  integer::brr(kk)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(29,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
 end block
 end block
end associate
end associate
end
