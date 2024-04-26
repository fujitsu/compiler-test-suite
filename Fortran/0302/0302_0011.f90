  module mod
   complex(8) a(7,7)
   complex(8),dimension(7,7)::c06,c07
   complex(8),dimension(7,7)::e06,e07
   complex(8),dimension(7,7)::f01,f02,f03,f04,f05,f06,f07
   complex(8),pointer::parr(:,:)
   complex(8),target ::tarr(7,7)
   complex(8),allocatable::alloc(:,:)
  end module

    program ompv2
     use mod
      call sub0()
      call sub1()
      call sub6a()
      call sub6b()
      call sub6c()
    end

    subroutine sub0
     use mod
      allocate(alloc(7,7))
      alloc=reshape( (/(cmplx(i,i+1),i=1,49)/),(/7,7/) )
      tarr=(0.2,-0.2)
      parr=>tarr
      a=reshape( (/(cmplx(real(i/3),real((i+1)/3)),i=1,49)/),(/7,7/) )
    end subroutine

    subroutine sub1()
     use mod
      c07=matmul(alloc,a)
     end

    subroutine sub6a()
     use mod
      e07 = transpose( reshape( pack(imag(c07),mask=.true.),(/7,7/) ) )
      write(6,*) e07(1,1),e07(1,2),e07(2,1),e07(2,2)
    end subroutine

    subroutine sub6b()
     use mod
      e07 = transpose( reshape( pack(imag(c07),mask=.true.),(/7,7/) ) )+3
      write(6,*) e07(1,1),e07(1,2),e07(2,1),e07(2,2)
    end subroutine

    subroutine sub6c()
     use mod
      e07 = transpose( reshape( pack(imag(c07),mask=.true.),(/7,7/) ) )+(2.,4.)
      write(6,*) e07(1,1),e07(1,2),e07(2,1),e07(2,2)
    end subroutine

