call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
call sub08()
call sub09()
call sub10()
call sub11()
print *,'snfm0028 : pass'
end

subroutine sub01()
implicit none
associate( k=> 3)
 block
  integer::brr(k),arr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end
subroutine sub02()
implicit none
integer ,parameter :: p3=3
associate( k=> p3)
 block
  integer::arr(k),brr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end

subroutine sub03()
implicit none
integer ,parameter :: p3(1)=3
associate( k=> p3(1))
 block
  integer::arr(k),brr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end
subroutine sub04()
implicit none
associate( k=> int(3))
 block
  integer::arr(k),brr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end
subroutine sub05()
implicit none
integer  :: p3=3
associate( k=> p3)
 block
  integer::arr(k),brr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end
subroutine sub06()
implicit none
integer  :: p3(1)=3
associate( k=> p3(1))
 block
  integer::arr(k),brr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end
subroutine sub07()
implicit none
integer  :: p3=2
associate( k=> p3+1)
 block
 end block
end associate
end
subroutine sub08()
implicit none
type ty1
 integer :: pp
end type
type(ty1) ,parameter :: str=ty1(3)
associate( k=> str%pp)
 block
  integer::arr(k),brr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end
subroutine sub09()
implicit none
type ty1
 integer :: pp(1)
end type
type(ty1) ,parameter :: str=ty1((/3/))
associate( k=> str%pp(1))
 block
  integer::arr(k),brr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end
subroutine sub10()
implicit none
type ty1
 integer :: pp
end type
type(ty1)  :: str=ty1(3)
associate( k=> str%pp)
 block
  integer::arr(k),brr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end
subroutine sub11()
implicit none
type ty1
 integer :: pp(1)
end type
type(ty1) :: str=ty1((/3/))
associate( k=> str%pp(1))
 block
  integer::arr(k),brr(k)
  arr(1)=1
  arr(2)=2
  arr(3)=3
  if (size(arr).ne.3) print *,100,size(arr)
   write(26,*) arr(2)
  if (arr(1)/=1) print *,700,arr(1)
  if (arr(2)/=2) print *,800,arr(2)
  if (arr(3)/=3) print *,900,arr(3)
  brr(1)=1
  brr(2)=2
  brr(3)=3
  if (size(brr).ne.3) print *,100,size(brr)
   write(26,*) brr(2)
  if (brr(1)/=1) print *,700,brr(1)
  if (brr(2)/=2) print *,800,brr(2)
  if (brr(3)/=3) print *,900,brr(3)
 end block
end associate
end
