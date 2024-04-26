subroutine s1
 procedure(),pointer:: p=> null()
 type x
   procedure(),nopass,pointer:: p=> null()
 end type
end
call s1
print *,'pass'
end
