class(*),pointer :: p_arr(:,:)
integer,target :: arr(5,10)

do i = 1,5
 do j = 1,10
   arr(i,j) = i+j
 end do
end do
p_arr => arr
select type(aa=>p_arr)
type is(integer)
 do i=aa(1,1)-1,aa(1,2)+2
  arr(aa(1,2),i)=2
   select type(aa=>p_arr(1,2))
    type is(integer)
       arr(aa,i)=12
   end select
 end do  
end select
if(arr(3,1).ne.12)print*,"101"
if(arr(3,2).ne.12)print*,"102"
if(arr(3,3).ne.12)print*,"103"
print*,"PASS"
end
