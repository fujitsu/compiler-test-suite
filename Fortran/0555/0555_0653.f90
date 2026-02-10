Module STmod

 TYPE base
  integer :: i1=1
  character(8) :: ch1='a'
 END TYPE

 TYPE,extends(base) :: inherit1
  integer :: i2=2
  logical :: log2=.true.
 END TYPE

 TYPE,extends(inherit1) :: inherit2
  integer :: i3=3
  real :: r3=1.1
 END TYPE

END MODULE

program test
      use STmod
      interface operator(*)
       function mul(a,b)
        use STmod
        type(inherit2),intent(in) :: a
        type(inherit2),intent(in) :: b
        class(base),pointer :: mul
       end function
      end interface operator(*)

      type (inherit2), target :: p1,tgt2
      class (base), pointer :: p2,res

      p1%i1 = 11
      p1%i2 = 12
      p1%i3 = 13
      p1%log2 = .false.
      tgt2%i1 = 21
      tgt2%i2 = 22
      tgt2%i3 = 23
      tgt2%log2 = .true.
      p2 => tgt2
      select type (p2)
       type is(inherit1)
       print*,101
       type is(inherit2)
         res => p1*p2
       type is(base)
       print*,102
       class default
       print*,103
      end select

      if(res%i1==32) then
        print*,'pass'
      else
        print*,104,res%i1
      endif

end program test

function mul(a,b)
 use STmod
 type(inherit2),intent(in) :: a
 type(inherit2),intent(in) :: b
 class(base),pointer :: mul
 type(inherit2),target,save :: mtgt

   mtgt%i1= a%i1 + b%i1
   mtgt%i2= a%i2 + b%i2
   mtgt%i3= a%i3 + b%i3
   mtgt%log2 = a%log2 .or. b%log2

   mul => mtgt
end function
