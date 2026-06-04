 interface assignment(=)
 subroutine das(this,d2)
 class(*), intent(inout) :: this
 class(*), intent(in) :: d2
 end
 end interface

 character :: ii = 'c'
 real(8) :: cc = 2.0
 ii=cc
 if(ii .ne. 'p') print*,"221"
 print*,"Pass"
 end
       
 subroutine das(this,d2)
 class(*), intent(inout) :: this
 class(*), intent(in) :: d2
 select type(this)
 type is(character(*))
  this = 'p'
 class default
  print*,"120"
 end select
 select type(d2)
 type is(real(8))
 if(d2 .ne. 2.0) print*,"121"
 class default
   print*,"122"
 end select
 end

