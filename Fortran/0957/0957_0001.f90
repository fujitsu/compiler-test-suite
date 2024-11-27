             module Mod_UnlimitedVector10
        
               type :: v_Wrapper
                  class(*), allocatable :: item
               end type v_Wrapper
        
               type :: UnlimitedVector10
                  private
                  type(v_Wrapper) :: elements(10)
                 integer :: vsize = 0
              contains
                 procedure :: at
                 procedure :: set
              end type UnlimitedVector10
       
              contains
       
              subroutine set(this, i, value)
                 class(UnlimitedVector10), intent(inout) :: this
                 integer, intent(in) :: i
                 class(*), intent(in) :: value
                 allocate(this%elements(i)%item, source= value)
              end subroutine set
       
              function at(this, i) result(res)
                 class(UnlimitedVector10), target, intent(in) :: this
                 integer, intent(in) :: i
                 class(*), pointer :: res
                 res=>this%elements(i)%item
       
                 select type(res)
                    type is(integer)
                       if(i.eq.1)then
                         if(res.ne.12)print*,"901"
                       end if         
                       if(i.eq.4)then
                         if(res.ne.78)print*,"902"
                       end if         
                    type is(real(kind=8))
                       if(i.eq.2)then
                         if(res.ne.34)print*,"911"
                       end if         
                       if(i.eq.3)then
                         if(res.ne.56)print*,"912"
                       end if         
                 end select
              end function at
       
        end module Mod_UnlimitedVector10
       
        program main
           use Mod_UnlimitedVector10
           type (UnlimitedVector10) :: values
           integer i, loop
           real(kind=8) f
       
           i = 12
           f = 34.0
           call values%set(1, i)
           call values%set(2, f)
           f = 56.0
           i = 78
           call values%set(3, f)
           call values%set(4, i)
       
           do loop = 1, 4
              select type (v => values%at(loop))
              type is (integer)
                   if (loop.eq.1)then
                     if(v.ne.12)print*,"101"
                   end if
                   if (loop.eq.4)then
                     if(v.ne.78)print*,"102"
                   end if
                 if (loop==2.or. loop==3)print*,"501"  
              type is (real(kind=8))
                   if(loop.eq.2) then
                     if(v.ne.34.0)print*,"402"
                   end if
                   if(loop.eq.3) then
                     if(v.ne.56.0)print*,"302"
                   end if
                 if (loop==1.or. loop==4)print*,"502"  
              end select
           end do
       
        print *,'pass'
        end program

