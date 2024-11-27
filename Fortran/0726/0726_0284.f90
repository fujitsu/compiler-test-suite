 type a
   integer ::a1=1
   integer,dimension(1,1,1,1,1,1,2) ::a2=2
   integer,dimension(1,1,1,1,1,1,2) ::a3=reshape((/3,4/),(/1,1,1,1,1,1,2/))
    integer,pointer,dimension(:,:,:,:,:,:,:) ::a5=>null()
 end type
 type (a),allocatable,dimension(:):: x0
 type ax
   type (a),pointer    ,dimension(:,:,:,:,:,:,:):: x1=>null()
 end type
 type (ax),pointer                 :: x3
 allocate(x0(2))
 if (any(x0%a1/=1))write(6,*) "NG"
   allocate(x3)
 print *,'pass'
 end
