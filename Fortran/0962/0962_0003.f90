integer,pointer :: p_arr(:,:,:,:)
integer,target :: arr(5,10,5,10)=3,arr2(4,6,4,6)=2
integer :: v(3)

p_arr => arr
v = (/1,3,2/)
print*,arr2

associate(aa=>p_arr(2,3,v,4),bb=>aa)
 print *, bb
 associate(cc=>bb,dd=>cc)
  OPEN(1,FILE='ABC011.DATA',status='old')
  READ(1,*) dd
  CLOSE(1)
 end  associate
 print *, p_arr 
end associate

end
