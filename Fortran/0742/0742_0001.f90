module point_mod
   implicit none
   contains
      subroutine sub(q)
      integer,pointer::q(:,:)
      integer i, j

      allocate(q(7,5))
      q = reshape((/((i+j-1,i=1,size(q,1)),j=1,size(q,2))/), shape(q))
      return
   end subroutine sub
end module point_mod

program main
   use point_mod
   integer,pointer::p(:,:)

   character(20) c
   call sub(p)
   write(c,'(a,i0,a)') '(',size(p,2),'i3)'
   write(1,c) transpose(p)
rewind 1
call xx
print *,'pass'
end program main
subroutine xx
integer a(5)
 do j=1,7
read(1,*) a
if (any(a/=(/(k,k=j,j+4)/)))write(6,*) "NG"
 end do
end
