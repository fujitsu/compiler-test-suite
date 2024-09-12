intrinsic :: sin
intrinsic :: cos
intrinsic :: dsin
intrinsic :: dcos

procedure(sin) ,pointer :: p
p=>cos

print *,'pass'

end

function func1(i) result(j)
 procedure(integer),pointer :: i,j
 j=>i
end function
function func5(i) result(j)
 integer,pointer :: i,j
 j=>i
end function

function func6(i) result(j)
 integer,pointer :: i,j
 j=i
end function

function func7(i) result(j)
 type ty1
  integer,pointer :: ti
 end type
 type(ty1)::i,j
 j%ti=>i%ti
end function
function func8(i) result(j)
 type ty1
  integer,pointer :: ti
 end type
 type(ty1)::i,j
 j%ti=i%ti
end function
