type employee
  integer::id
  character(len=20)::name
end type employee
type(employee)::x(4) = (/employee(2732,"JONES"), employee(0217,"LEE"),employee(1889,"RYAN"), employee(4339,"EMERSON")/)
integer::y= rank(A=x)
integer::q= rank(A=x%name)
integer::r= rank(A=x%id)
integer::s= rank(A=x(1)%name)
integer::t= rank(A=x(1)%id)
if(y.ne.1)print*,"101"
if(q.ne.rank(x%name))print*,"102",q
if(r.ne.rank(A=x%id))print*,"103",q
if(s.ne.0)print*,"102",q
if(t.ne.0)print*,"103",q
print*,"pass"
end

