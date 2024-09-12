   module m1
   type x
      integer:: x1
   end type
  end
  subroutine s1
  use m1
   type (x),allocatable:: a01(:)
   type (x),allocatable:: a02(:)

   allocate ( x::a01(5))
   allocate ( x::a02(4))

  a01(1)%x1 = 10
  a01(2)%x1 = 20
  a01(3)%x1 = 30
  a01(4)%x1 = 40
  a01(5)%x1 = 50

  a02(1)%x1 = 1
  a02(2)%x1 = 2
  a02(3)%x1 = 3
  a02(4)%x1 = 4

  a01=merge(a02,a02,.true.) 

 if(size(a01) .ne. 4) print*,"121",size(a01)
 if(any(a01%x1 .ne. [1,2,3,4])) print*,"122",a01%x1

  deallocate(a01)
  allocate ( x::a01(6))
  a01(1)%x1 = 101
  a01(2)%x1 = 201
  a01(3)%x1 = 301
  a01(4)%x1 = 401
  a01(5)%x1 = 501
  a01(6)%x1 = 601

  a02=merge(a01,a01,.true.) 

  if(size(a02) .ne. 6) print*,"221"
  if(any(a02%x1 .ne. [101,201,301,401,501,601])) print*,"222",a02
  end

  call s1
  print *,"pass"
end
