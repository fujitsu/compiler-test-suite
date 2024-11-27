integer,parameter::m=4,n=3
type z
  integer(2),allocatable,dimension(:)::za
end type
type y
  type(z),allocatable,dimension(:)::ya
end type
type(y),allocatable,dimension(:,:)::a

integer,allocatable,dimension(:,:)::p1,p2,p3,p4,p5

  allocate(a(m,n))
  allocate(p1(m,n),p2(m,n),p3(m,n),p4(m,n),p5(m,n))
  p1=reshape((/1,1,1,1, 1,1,1,1, 1,1,1,1/),(/4,3/))
  p2=reshape((/0,2,2,2, 0,2,2,2, 0,2,2,2/),(/4,3/))
  p3=reshape((/0,3,0,3, 0,3,0,3, 0,3,0,3/),(/4,3/))
  p4=reshape((/0,0,0,4, 0,4,0,4, 0,4,0,4/),(/4,3/))
  p5=reshape((/0,5,0,5, 0,5,0,5, 0,5,0,0/),(/4,3/))

  forall(i=1:3:1)
    where(p1(:,i)==1)
      where(p2(:,i)==2)
        where(p3(:,i)==3)
          where(p4(:,i)==4)
            where(p5(:,i)==5)
              a(:,i)=y((/z((/1/))/))
            end where
          end where
        end where
      end where
    end where
  endforall

  if (     allocated(a(1,1)%ya)) write(6,*) "NG"
  if (     allocated(a(2,1)%ya)) write(6,*) "NG"
  if (     allocated(a(3,1)%ya)) write(6,*) "NG"
  if (.not.allocated(a(4,1)%ya)) write(6,*) "NG"
  if (     allocated(a(1,2)%ya)) write(6,*) "NG"
  if (.not.allocated(a(2,2)%ya)) write(6,*) "NG"
  if (     allocated(a(3,2)%ya)) write(6,*) "NG"
  if (.not.allocated(a(4,2)%ya)) write(6,*) "NG"
  if (     allocated(a(1,3)%ya)) write(6,*) "NG"
  if (.not.allocated(a(2,3)%ya)) write(6,*) "NG"
  if (     allocated(a(3,3)%ya)) write(6,*) "NG"
  if (     allocated(a(4,3)%ya)) write(6,*) "NG"
  if (.not.allocated(a(4,1)%ya(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2,2)%ya(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(4,2)%ya(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2,3)%ya(1)%za)) write(6,*) "NG"
  if (any(a(4,1)%ya(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(2,2)%ya(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(4,2)%ya(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(2,3)%ya(1)%za/=(/1/))) write(6,*) "NG"

 print *,'pass'
end
