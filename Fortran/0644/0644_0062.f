      type tag
        integer*4,pointer:: i4p
        complex*16,pointer:: cp(:)
      end type
      type (tag),pointer:: stp
      allocate(stp)
      allocate(stp%i4p)
      allocate(stp%cp(100))
      stp%i4p=2
      stp%cp(50)=dcmplx(1.2d-10,4.5d-20)
      stp%cp(100)=(1.0d0,1.0d0)
      print *,stp%i4p,stp%cp(50),stp%cp(100)
      stop
      end
