 call s1
 print *,'pass'
 end
 module m1
   integer::i1,i2,i3
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
  type(c)::cs1f(i2,i3,i1)
  end
 subroutine s1
  use m1
    interface
      function cs1f()
      use m1
      type(c)::cs1f(i2,i3,i1)
      end function
    end interface
  i1=1;i2=2;i3=3
  do kk=1,3
   if((cs1f()/=1))write(6,*) "NG"
  end do
end
