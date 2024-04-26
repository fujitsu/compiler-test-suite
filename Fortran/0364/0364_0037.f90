program main
integer,target,dimension(2,2,2)::v_area1,v_area2,v_area3
integer,pointer,dimension(:,:,:)::v_ap
v_area1=reshape( source=(/(i,i=1,8)/), shape=(/2,2,2/) )
v_area2=reshape( source=(/(i,i=-8,0)/), shape=(/2,2,2/) )
v_area3=reshape( source=(/(i,i=11,18)/), shape=(/2,2,2/) )
v_ap=>v_area1
print *,v_area1
call pri(v_ap,8)
v_ap=>v_area2
print *,v_area2
call pri(v_ap,8)
v_ap=>v_area3
print *,v_area3
call pri(v_ap,8)
contains
  subroutine pri(p,dim)
  integer,pointer,dimension(:,:,:)::p
  integer:: dim
  integer,pointer,dimension(:)    ::p_one
  integer,target ,dimension(dim) ::p_one_area
  print *,p
  p_one=>p_one_area
  p_one=reshape(source=v_area1,shape=(/dim/))
  print *,p(p_one(1:2),p_one(1:2),p_one(1:2))
  return
  end subroutine pri
end program

