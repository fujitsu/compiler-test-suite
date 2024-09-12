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
type(a),target::obj
s=>obj

select type(s)
class is(b)
 print*,'101'
class is(e)
 print*,'102'
class is(g)
 print*,'103'
class is(h)
 print*,'104'
end select

print*,'PASS'
end program
