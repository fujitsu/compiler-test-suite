type tt1
 character(len=3) :: i = 'abc'
end type

 type(tt1),pointer,contiguous :: aa(:,:)

allocate(aa(5,4))

aa(:,1)%i='xxx'

if(is_contiguous(aa(:5,2:)%i(:)) .neqv. .false. ) print*,101

print*,'pass'
end
