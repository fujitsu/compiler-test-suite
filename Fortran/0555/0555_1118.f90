type a
 integer::i1
end type

type,extends(a):: b
 integer::i2
end type

type,extends(b):: c
 integer::i3
end type

type,extends(c):: d
 integer::i4
end type

type,extends(d):: e
 integer::i5
end type

type,extends(e):: f
 integer::i6
end type

type,extends(f):: g
 integer::i7
end type

type,extends(g):: h
 integer::i8
end type

class(a),pointer::s
type(c),target::obj
s=>obj

select type(s)
class is(h)
class is(g)
class is(f)
class is(e)
class is(d)
class is(c)
 print*,'PASS'
class is(b)
class is(a)
end select

end program
