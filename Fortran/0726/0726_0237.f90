 call s1
 print *,'pass'
 end
 module m1
   type c
    integer*1 ::c1=1
   end type
   interface operator(/=)
     module procedure chk
   end interface
   contains
   function chk(a,i)
   type(c),dimension(:,:,:),intent(in)::a
   integer,intent(in)::i
   logical chk
   chk=any(a%c1/=i)
   end function
end
  function cs1f()
  use m1
  type(c)::cs1f(2,3,1)
  end
 subroutine s1
  use m1
    interface
      function cs1f()
      use m1
      type(c)::cs1f(2,3,1)
      end function
    end interface
  do kk=1,3
   if((cs1f()/=1))write(6,*) "NG"
  end do
end
