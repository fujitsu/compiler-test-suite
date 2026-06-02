 interface assignment(=)
 subroutine das(this,d2)
 class(*), intent(inout) :: this
 class(*), intent(in) :: d2
 end
 end interface
 interface operator(+)
 function dop(this,d2)
 class(*), intent(in) :: this
 class(*), intent(in) :: d2
 integer :: dop
 end
 end interface

 type ty
 integer :: kk
 character :: ii = 'c'
 integer(1) :: ll(3)
 real(8) :: cc = 2.0
 end type
 type(ty) :: obj
 obj%ii=obj%cc
 obj%kk = obj%ii+obj%cc
 if(obj%ii .ne. 'p') print*,"101"
 if(obj%kk .ne. 3)print*,"102"
 print*,"Pass"
 end
       
 subroutine das(this,d2)
 class(*), intent(inout) :: this
 class(*), intent(in) :: d2
 select type(this)
 type is(character(*))
  this = 'p'
 class default
  print*,"102"
 end select
 select type(d2)
 type is(real(8))
 if(d2 .ne. 2.0) print*,"103"
 class default
   print*,"104"
 end select
 end

function dop(this,d2)
 class(*), intent(in) :: this
 class(*), intent(in) :: d2
 integer :: dop
 select type(this)
 type is(character(*))
 if(this .ne. 'p') print*,"105"
 class default
      print*,"106"
 end select
 select type(d2)
 type is(real(8))
    dop = int(d2) + 1
      class default
        print*,"107"
  end select
 end
