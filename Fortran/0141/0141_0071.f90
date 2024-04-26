 module m0
   type w
      integer::z
   end type
   type x
      class(w),pointer::y
      class(*),pointer::z
   end type
 end
 subroutine s1
 use m0
   interface
   function fun2()
    use m0
    type(x):: fun2
   end function
   end interface
 type(x):: aa
 aa=fun2()
end
print *,'pass'
 end
   function fun2()
    use m0
    type(x):: fun2
   end function
