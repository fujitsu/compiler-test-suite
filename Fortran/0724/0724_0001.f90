interface
 function func1(i) result(j)
  integer :: i,j
 end function
end interface

procedure(func1),pointer :: pfp
procedure(cfun1),pointer :: pcp

pfp=>cfun1

contains
 function cfun1(i) result(j)
  integer :: i,j
  j=i
 end function
 function cfun2(i) result(j)
  integer :: i,j
  procedure(func1),pointer :: pfp
  j=i
 end function
 function cfun3(i,j) result(k)
  interface
   function func1(i) result(j)
    integer :: i,j
   end function
  end interface
  integer :: i,k
  external :: j
  procedure(func1),pointer :: pfp
  pfp=> j
  k=i
 end function
end

function func1(i) result(j)
 integer :: i,j
 j=i
end function
