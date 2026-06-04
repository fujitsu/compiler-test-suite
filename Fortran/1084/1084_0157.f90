call sub
contains
subroutine sub
class(*),pointer :: p_arr(:,:)
class(*),pointer :: p_arr2(:,:)
integer,target :: arr(5,10)

do i = 1,5
 do j = 1,10
   arr(i,j) = i+j
 end do
end do
p_arr => arr
p_arr2 => arr
select type(aa=>p_arr)
type is(integer)
 do k=aa(1,1)-aa(1,1)+1,5
  select type(p_arr2)
    type is(integer)
      do i=aa(1,1)-1, 5
       arr(aa(1,2),i)=2
        select type(aa=>p_arr(1,2))
           type is(integer)
       arr(aa,i)=12
   end select
 end do  
   end select
 end do  
end select
if(arr(3,1).ne.12)print*,"101"
if(arr(3,2).ne.12)print*,"102"
if(arr(3,3).ne.12)print*,"103"
print*,"PASS"
end
end
