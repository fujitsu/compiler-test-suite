   interface
     subroutine sub0(a,b) 
     real*8 , intent(inout) :: a
     real*8 , intent(in)    :: b
     end subroutine
   end interface

   procedure(sub0), pointer :: psub
   integer * 4 i
   real * 8 a(100),b(100)

   psub => sub0

   do i=1,100
    a(i) = i
    b(i) = i
   enddo

   do i=1,100
     call psub(a(i),b(i))
     call sub0(a(i),b(i))
   enddo
   write(6,*) ' a = ',sum(a)
   write(6,*) ' end '
   end
   subroutine sub0(a,b) 
   real*8 , intent(inout) :: a
   real*8 , intent(in)    :: b

   a = a+b
   end subroutine
