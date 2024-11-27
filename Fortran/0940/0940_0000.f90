interface operator(+)
 function dop(this,d2)
 class(*), intent(in) :: this
 class(*), intent(in) :: d2
 integer :: dop
 end
end interface
       
character :: ii = 'c'
real(8) :: cc = 2.0
integer :: kk
 kk = ii+cc
 if(kk .ne. 3) print*,"221"
 print*,"Pass"
end
       
function dop(this,d2)
 class(*), intent(in) :: this
 class(*), intent(in) :: d2
 integer :: dop
 select type(this)
 type is(character(*))
 if(this .ne. 'c') print*,"120"
 class default
      print*,"121"
 end select
 select type(d2)
 type is(real(8))
    dop = int(d2) + 1
      class default
        print*,"122"
  end select
 end

