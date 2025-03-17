      program main
       interface
        subroutine s1(aa,bb,n1,n2)
         complex(4)::aa(:,:)
         complex(4)::bb(*)
         integer(4),intent(in)::n1,n2
        end subroutine s1
        subroutine s2(aa,cc,n1,n2)
         complex(4)::aa(:,:)
         complex(4)::cc(:)
         integer(4),intent(in)::n1,n2
        end subroutine s2
       end interface
       integer(4),parameter::n1=20,n2=10
       complex(4),dimension(20,10)::aa
       complex(4),dimension(20   )::bb
       complex(4),dimension(   10)::cc
       logical(4),dimension(20   )::ll
       logical(4),dimension(   10)::mm

        do i=1,n2
          call s0(aa(1,i))
        enddo
        bb(:)=(0.0e0,0.0e0)
        cc(:)=(0.0e0,0.0e0)
        call s1(aa,bb,n1,n2)
        call s2(aa,cc,n1,n2)
        call s3(bb,cc)
        call s4(ll,mm)
        print *,'pass'
       contains
        subroutine s3(bb,cc)
         complex(4)::bb(*),cc(*)
          do i=1,n1
            ll(i)=abs(real(bb(i))-float(i*10))>1.0e-4 .or. &
                  abs(imag(bb(i))-float(-i*10))>1.0e-4
          enddo
          do i=1,n2
            mm(i)=abs(real(cc(i))-210.0e0)>1.0e-4 .or. &
                  abs(imag(cc(i))-(-210.0e0))>1.0e-4
          enddo
        end subroutine s3
        subroutine s4(ll,mm)
         logical(4)::ll(:),mm(:)
          if(any(ll)) print *,'error 1'
          if(any(mm)) print *,'error 2'
        end subroutine s4
      end program main

      subroutine s0(aa)
       complex(4)::aa(*)
        do i=1,20
          aa(i)=cmplx(float(i),float(-i))
        enddo
      end subroutine s0

      subroutine s1(aa,bb,n1,n2)
       complex(4)::aa(:,:)
       complex(4)::bb(*)
       integer(4),intent(in)::n1,n2
        do i=1,n1
          do j=1,n2
            bb(i)=bb(i)+aa(i,j) 
          enddo
        enddo
      end subroutine s1

      subroutine s2(aa,cc,n1,n2)
       complex(4)::aa(:,:)
       complex(4)::cc(:)
       integer(4),intent(in)::n1,n2
        do i=1,n1
          do j=1,n2
            cc(j)=cc(j)+aa(i,j) 
          enddo
        enddo
      end subroutine s2
