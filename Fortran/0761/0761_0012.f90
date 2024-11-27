type :: t(a)
integer,kind::a
end type t
type, extends(t)::tt
integer::b
end type
type (t(1))::x(2)
type (tt(1))::y(2)
associate (x1=>x,y1=>y)
end associate
end
