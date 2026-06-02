interface
 function func1(i) result(rst)
  integer :: i
  integer :: rst
 end function
end interface

procedure(func1),pointer :: pp

type ty1
 procedure(func1),pointer,nopass :: tpp
end type

type ty2
 type(ty1)::tt1
end type
type ty3
 type(ty2)::tt2
end type
type ty4
 type(ty3)::tt3
end type
type ty5
 type(ty4)::tt4
end type
type ty6
 type(ty5)::tt5
end type

type(ty1) :: t1
type(ty2) :: t2
type(ty3) :: t3
type(ty4) :: t4
type(ty5) :: t5
type(ty6) :: t6

integer :: i

pp => func1

t1 = ty1(null())

t1%tpp => func1
t2%tt1%tpp => func1
t3%tt2%tt1%tpp => func1
t4%tt3%tt2%tt1%tpp => func1
t5%tt4%tt3%tt2%tt1%tpp => func1
t6%tt5%tt4%tt3%tt2%tt1%tpp => func1

i = t6%tt5%tt4%tt3%tt2%tt1%tpp(t5%tt4%tt3%tt2%tt1%tpp(t4%tt3%tt2%tt1%tpp(t3%tt2%tt1%tpp(t2%tt1%tpp(t1%tpp(pp(1)))))))

if (i.ne.1) print *,'fail'

print *,'pass'

end

function func1(i) result(rst)
 integer :: i
 integer :: rst
 rst=i
end function
