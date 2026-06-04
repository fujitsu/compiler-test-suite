real::aa(5,5)=3.0
        if(maxexponent(aa) /= 128)print*,101,maxexponent(aa)
        if(minexponent(aa) /= -125)print*,102,minexponent(aa)
        if(range(aa) /= 37)print*,105,range(aa)
call sub(fun1(aa) + 10.00 + (fun4(fun1(aa))))
print*,"pass"
contains
function fun1(yy)
real:: yy(..),xx(6,6)
real::fun1(6,6)       
if(loc(aa) .ne. loc(yy))print*,"101"
xx = 2.0 
fun1 = xx
end function fun1
function fun4(bb)
        real::bb(..),zz(6,6)
        real::fun4(6,6)
        fun4 = rank(bb)
        zz = 2.0
        fun4 = zz
end function fun4
subroutine sub(bb)
real::bb(..)
     if(lbound(bb,dim=1) /= 1)print*,201
     if(lbound(bb,dim=2) /= 1)print*,202
     if(ubound(bb,dim=1) /=6)print*,203
     if(ubound(bb,dim=2) /=6)print*,204
     if(size(shape(bb)) /=2)print*,205
     if(size(bb) /= 36)print*,207
      if(is_contiguous(bb).NEQV. .TRUE.)print*,108

      if(kind(bb) /= 4)print*,209
      if(huge(bb) /= 3.40282347E+38)print*,210,huge(bb)
      if(rank(bb) /=2)print*,211
        if(maxexponent(bb) /= 128)print*,101,maxexponent(bb)
        if(minexponent(bb) /= -125)print*,102,minexponent(bb)
        if(precision(bb) /= 6)print*,103
        if(radix(bb) /= 2)print*,104
        if(range(bb) /= 37)print*,105,range(bb)

        if(tiny(bb) .ne. 1.17549435E-38)print*,106
end subroutine
end
