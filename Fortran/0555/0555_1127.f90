
type a12
 integer::i112
end type

type,extends(a12):: b12
 integer::i212
end type

type,extends(b12):: c12
 integer::i312
end type

type,extends(c12):: d12
 integer::i412
end type

type,extends(d12):: e12
 integer::i512
end type

type a1
 integer::i11
end type

type,extends(a1):: b1
 integer::i21
end type

type,extends(b1):: c1
 integer::i31
end type

type,extends(c1):: d1
 integer::i41
end type

type,extends(d1):: e1
 integer::i51
end type

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

type x
 integer::x1
end type

type,extends(x):: y
 integer::x2
end type

type,extends(y):: z
 integer::x3
end type

class(*),pointer::s
type(d12),target::obj
s=>obj

select type(s)
class is(h)
class is(f)
class is(e1)
class is(e12)
class is(d)
class is(z)
class is(c12)
 print*,'PASS'
class is(y)
class is(b1)
class is(x)
class is(a)
class is(a12)
end select

end program
