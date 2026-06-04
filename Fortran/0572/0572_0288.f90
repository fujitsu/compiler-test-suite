complex(kind=8)::aa(5,5)
        if(maxexponent(aa%re) /= 1024)print*,1001,maxexponent(aa%re)
        if(minexponent(aa%re) /= -1021)print*,1002,minexponent(aa%re)
        if(kind(aa) /= 8)print*,2009 , kind(aa)
if(fun3((/fun1(aa),fun4(aa)/)).ne.1)print*,1003

print*,"pass"
contains
function fun1(yy)
complex(kind=8):: yy(..),xx(5)
complex(kind=8)::fun1(5)
xx = (2,3)
fun1 = rank(yy)
fun1 = xx(5)
end function fun1
function fun4(bb)
        complex(kind=8)::bb(..),zz(5)
        complex(kind=8)::fun4(5)
        zz = (2,3)
        fun4 = rank(bb)
        fun4 = zz(5)
end function fun4
function fun3(bb)
complex(kind=8)::bb(..)
integer::fun3
fun3 = rank(bb)
     if(lbound(bb,1) /= 1)print*,201
     if(any(ubound(bb) /=10))print*,203
     if(size(shape(bb)) /=1)print*,205
     if(size(bb) /= 10)print*,207
      if(is_contiguous(bb).NEQV. .TRUE.)print*,108

      if(kind(bb) /= 8)print*,209 , kind(bb)
      if(huge(bb%re) /= huge(aa%re))print*,210,huge(bb%re)
      if(rank(bb) /=1)print*,211
        if(maxexponent(bb%re) /= 1024)print*,101,maxexponent(bb%re)
        if(minexponent(bb%re) /= -1021)print*,102,minexponent(bb%re)
        if(precision(bb) /= 15)print*,103,precision(bb)
        if(radix(bb%re) /= 2)print*,104
        if(range(bb) /= range(aa))print*,105,range(bb)

        if(tiny(bb%re) .ne.tiny(aa%re))print*,106,tiny(bb%re)
end function fun3
end
