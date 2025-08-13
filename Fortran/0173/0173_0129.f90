do k=1,100
call s1
end do
 call s1
 print *,'pass'
 end
 module m1
  integer::i2=2,i3=3
  type z
    character ::zz='1'
  end type
  type w
  type(z),dimension(2,3)::a1
  end type
  contains
   elemental function ss1(x1,x2)
   type(z),intent(in)::x1
   type(z),intent(in)::x2
   type(z)::ss1
   ss1%zz=x1%zz//x2%zz
   end function
 end
 subroutine s1
 use m1
 type(w),pointer::x
allocate(x)
 write(17,*) ss1(x%a1,(x%a1))
rewind 17
read(17,*) k
if (k/=111111) print *,101
 end
