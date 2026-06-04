real*8::aa(5,5)
        if(maxexponent(aa) /= 1024)print*,1001,maxexponent(aa)
        if(minexponent(aa) /= -1021)print*,1002,minexponent(aa)
if(fun3((fun1(aa) + 10.00 + (fun4(fun1(aa))))).ne.2)print*,"1003"
print*,"pass"
contains
function fun1(yy)
real*8:: yy(..),xx(6,6)
real*8::fun1(6,6)
xx = 2.0
fun1 = rank(yy)
fun1 = xx
end function fun1
function fun4(bb)
        real*8::bb(..),zz(6,6)
        real*8::fun4(6,6)
        fun4 = rank(bb)
        zz = 2.0
        fun4 = zz
end function fun4
function fun3(bb)
real*8::bb(..)
integer::fun3
fun3 = rank(bb)
     if(lbound(bb,dim=1) /= 1)print*,201
     if(lbound(bb,dim=2) /= 1)print*,202
     if(ubound(bb,dim=1) /=6)print*,203
     if(ubound(bb,dim=2) /=6)print*,204
     if(size(shape(bb)) /=2)print*,205
     if(size(bb) /= 36)print*,207
      if(is_contiguous(bb).NEQV. .TRUE.)print*,108

      if(kind(bb) /= 8)print*,209
      if(huge(bb) /= huge(aa))print*,210,huge(bb)
      if(rank(bb) /=2)print*,211
        if(maxexponent(bb) /= 1024)print*,101,maxexponent(bb)
        if(minexponent(bb) /= -1021)print*,102,minexponent(bb)
        if(precision(bb) /= 15)print*,103,precision(bb)
        if(radix(bb) /= 2)print*,104
        if(range(bb) /= range(aa))print*,105,range(bb)

        if(tiny(bb) .ne.tiny(aa))print*,106,tiny(bb)
end function fun3
end
