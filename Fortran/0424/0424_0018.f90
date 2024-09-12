integer,pointer::a=>null()
integer, target :: x
if (associated(a)) print *,1
a=>x
x=2
if (a /= 2) print *,2
print *,'pass'
end
