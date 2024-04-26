program main

  interface operator (.PPP.)
    integer(8) function f_foo(bar,baz)
      integer(8) ::  bar(2,2)
      intent(in) :: bar
      integer(8) :: baz(2,2)
      intent(in) :: baz
    end function f_foo
  end interface
  integer(8) :: ii
  real(8) :: hhhh(10)
  real(8) :: result
  real(8),parameter :: answer=45.0 

   do ii=reshape((/6_8,7_8,8_8,9_8/),(/2,2/)) &
        .PPP.reshape((/1_8,2_8,3_8,4_8/),(/2,2/)) &
        ,10,1
     hhhh(ii) = ii-1
   enddo

   result = sum(hhhh)

   if ( result .eq. answer ) then
     print *,"ok",result
   else 
     print *,"ng",result,answer
   endif
  
end program main

integer(8) function f_foo(bar,baz)
  integer(8) :: bar(2,2)
  intent(in) :: bar
  integer(8) :: baz(2,2)
  intent(in) :: baz

  f_foo=1_8
  return
end function f_foo
