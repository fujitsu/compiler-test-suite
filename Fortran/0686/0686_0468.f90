    module mod
     complex(16),pointer::parr(:,:)
     complex(16),target ::tarr(7,7)  
     complex(16),allocatable::alc(:,:)
    end module

    program ompv2
     use mod
     complex(16) a(7,7)
     complex(16) b(7,7)
     complex(16),dimension(7,7)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10, &
                                 c11,c12,c13
     complex(16),dimension(7,7)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10, &
                                 d11,d12,d13
     complex(16),dimension(7,7)::e01,e02,e03,e04,e05,e06,e07
     real(8),dimension(7,7)  ::e08,e09,e10
     complex(16),dimension(7,7)  ::f01,f02,f03,f04,f05,f06,f07
     real(8),dimension(7,7)  ::f08,f09,f10
     complex(16) arr1(7,7)  
     complex(16) arr2(7,7)  
     complex(16) arg1(7,7)  
     complex(16) arg2(7,7)  
      n=7
      call sub0()
      call sub1(a,b,arr1,arr2,arg1,arg2,                          &
                c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13,n)
      call sub2(a,b,arr1,arr2,arg1,arg2,                          &
                d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
      call sub3(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
      call sub4(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
      call sub5(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
      call sub6(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                e01,e02,e03,e04,e05,e06,e07,e08,e09,e10,n)
      call sub7(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,n)
      call sub8(e01,e02,e03,e04,e05,e06,e07,e08,e09,e10, &
                f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,n)
      print *,'pass'
     contains
      subroutine sub0
        allocate(alc(7,7))
        alc=reshape( (/(cmplx(i,i+1),i=1,49)/),(/7,7/) )
        arr1=reshape( (/((/(1.0,-1.1),(2.0,-2.2),(3.0,-3.3),(4.0,-4.4), &
                           (5.0,-5.5),(6.0,-6.6),(7.0,-7.7)/),i=1,7)/),(/7,7/) )
        arr2=reshape( (/((/(0.9,-1.1),(1.8,-2.2),(2.7,-3.3),(3.6,-4.4), &
                           (4.5,-5.5),(5.4,-6.6),(6.3,-7.7)/),i=1,7)/),(/7,7/) )
        arg1=reshape( (/((/(0.2,-0.2),(0.3,-0.3),(0.4,-0.4),(0.5,-0.5), &
                           (0.4,-0.4),(0.3,-0.3),(0.2,-0.2)/),i=1,7)/),(/7,7/) )
        arg2=reshape( (/((/(0.5,-0.5),(0.4,-0.4),(0.3,-0.3),(0.2,-0.2), &
                         (0.3,-0.3),(0.4,-0.4),(0.5,-0.5)/),i=1,7)/),(/7,7/) )
        tarr=(0.2,-0.2)
        parr=>tarr
        a=reshape( (/(cmplx(real(i/3),real((i+1)/3)),i=1,49)/),(/7,7/) )
        b=reshape( (/(cmplx(real(i/3),real((i+1)/3)),i=100,2,-2)/),(/7,7/) )
      end subroutine
    end program

    subroutine sub1(a,b,arr1,arr2,arg1,arg2,                          &
                    c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13,n)
     use mod
     complex(16),dimension(n,n)::a,b,arr1,arr2,arg1,arg2
     complex(16),dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10, &
                                 c11,c12,c13
      c01=matmul(a,b)
      c02=matmul(a,matmul(a,b))
      c03=matmul(matmul(a,b),b)
      c04=matmul(matmul(a,b),matmul(a,b))
      c05=matmul(arr1,arr2)
      c06=matmul(parr,a)
      c07=matmul(alc,a)
      c08=matmul(a,arg2)
      c09=matmul(arg1,a)
      c10=matmul(arg1,arg2)
      c11=matmul(arg1,matmul(arg1,arg2))
      c12=matmul(matmul(arg1,arg2),arg2)
      c13=matmul(matmul(arg1,arg2),matmul(arg1,arg2))
     end

    subroutine sub2(a,b,arr1,arr2,arg1,arg2,                          &
                    d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
     use mod
     complex(16),dimension(n,n)::a,b,arr1,arr2,arg1,arg2
     complex(16),dimension(n,n)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10, &
                                 d11,d12,d13
!$omp parallel workshare
      d01=matmul(a,b)
      d02=matmul(a,matmul(a,b))
      d03=matmul(matmul(a,b),b)
      d04=matmul(matmul(a,b),matmul(a,b))
      d05=matmul(arr1,arr2)
      d06=matmul(parr,a)
      d07=matmul(alc,a)
      d08=matmul(a,arg2)
      d09=matmul(arg1,a)
      d10=matmul(arg1,arg2)
      d11=matmul(arg1,matmul(arg1,arg2))
      d12=matmul(matmul(arg1,arg2),arg2)
      d13=matmul(matmul(arg1,arg2),matmul(arg1,arg2))
!$omp end parallel workshare
     end

    subroutine sub3(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                    d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
     complex(16),dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10, &
                                 c11,c12,c13
     complex(16),dimension(n,n)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10, &
                                 d11,d12,d13
      if (any(c01/=d01)) print *,"fail"
      if (any(c02/=d02)) print *,"fail"
      if (any(c03/=d03)) print *,"fail"
      if (any(c04/=d04)) print *,"fail"
      if (any(c05/=d05)) print *,"fail"
      if (any(c06/=d06)) print *,"fail"
      if (any(c07/=d07)) print *,"fail"
      if (any(c08/=d08)) print *,"fail"
      if (any(c09/=d09)) print *,"fail"
      if (any(c10/=d10)) print *,"fail"
      if (any(c11/=d11)) print *,"fail"
      if (any(c12/=d12)) print *,"fail"
      if (any(c13/=d13)) print *,"fail"
    end subroutine

    subroutine sub4(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                    d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
     complex(16),dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10, &
                                 c11,c12,c13
     complex(16),dimension(n,n)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10, &
                                 d11,d12,d13
      logical(1)::l=.false.
!$omp parallel workshare
      l = any(c01/=d01)
      l = l.or.any(c02/=d02)
      l = l.or.any(c03/=d03)
      l = l.or.any(c04/=d04)
      l = l.or.any(c05/=d05)
      l = l.or.any(c06/=d06)
      l = l.or.any(c07/=d07)
      l = l.or.any(c08/=d08)
      l = l.or.any(c09/=d09)
      l = l.or.any(c10/=d10)
      l = l.or.any(c11/=d11).or.any(c12/=d12).or.any(c13/=d13)
!$omp end parallel workshare
      if (l) print *,"fail"
    end subroutine

    subroutine sub5(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                    d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
     complex(16),dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10, &
                                 c11,c12,c13
     complex(16),dimension(n,n)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10, &
                                 d11,d12,d13
     logical(1)::l=.true.
!$omp parallel workshare
      l = any(c01==d01)
      l = l.and.all(c02==d02)
      l = l.and.all(c03==d03)
      l = l.and.all(c04==d04)
      l = l.and.all(c05+c06==d05+d06)
      l = l.and.all(c07-c08==d07-d08)
      l = l.and.all(c09==d09)
      l = l.and.all(c10==d10)
      l = l.and.all(c11==d11).and.all(c12==d12).and.all(c13==d13)
!$omp end parallel workshare
      if (.not.l) print *,"fail"
    end subroutine

    subroutine sub6(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                    e01,e02,e03,e04,e05,e06,e07,e08,e09,e10,n)
     complex(16),dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10, &
                                 c11,c12,c13
     complex(16),dimension(n,n)::e01,e02,e03,e04,e05,e06,e07
     real(8),dimension(n,n)::e08,e09,e10
     logical::ll=.true.
      e01 = transpose(c01)
      e02 = transpose(c02+1)
      e03 = transpose( transpose(c03) )
      e04 = transpose( matmul( c04-1,c05 ) )
      e05 = transpose( transpose(c05+1) )
      e06 = transpose( c06-1 )
      e07 = transpose( reshape( pack(c07,mask=ll),(/7,7/) ) )
      e08 = dble( transpose(c08) / maxval( pack(imag(c08),mask=ll) ) )
      e09 = dble( matmul( transpose(c09+c10-c11),c10 ) )
      e10 = dble( transpose(matmul(c12,c13)) / minval( pack(real(c13),mask=ll) ) )
    end subroutine

    subroutine sub7(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                    f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,n)
     complex(16),dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10, &
                                 c11,c12,c13
     complex(16),dimension(n,n)::f01,f02,f03,f04,f05,f06,f07
     real(8),dimension(n,n)::f08,f09,f10
     logical::ll=.true.
!$omp parallel 
!$omp workshare
      f01 = transpose(c01)
      f02 = transpose(c02+1)
      f03 = transpose( transpose(c03) )
      f04 = transpose( matmul( c04-1,c05 ) )
      f05 = transpose( transpose(c05+1) )
      f06 = transpose( c06-1 )
      f07 = transpose( reshape( pack(c07,mask=ll),(/7,7/) ) )
      f08 = dble( transpose(c08) / maxval( pack(imag(c08),mask=ll) ) )
      f09 = dble( matmul( transpose(c09+c10-c11),c10 ) )
      f10 = dble( transpose(matmul(c12,c13)) / minval( pack(real(c13),mask=ll) ) )
!$omp end workshare
!$omp end parallel
    end subroutine

    subroutine sub8(e01,e02,e03,e04,e05,e06,e07,e08,e09,e10, &
                    f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,n)
     complex(16),dimension(n,n)::e01,e02,e03,e04,e05,e06,e07
     real(8),dimension(n,n)::e08,e09,e10
     complex(16),dimension(n,n)::f01,f02,f03,f04,f05,f06,f07
     real(8),dimension(n,n)::f08,f09,f10
     integer::ii(16)=100
     logical::ll=.true.
!$omp parallel workshare
      ii(1) = count(e08-f08>1.0d-8)
      ii(2) = count((e10+e09)-(f10+f09)>1.0d-8)
      ii(3) = ii(3) + count(e01==f01)
      ii(4) = count(e02/=f02)
      ii(5:11) = count(e03-e04==f03-f04,dim=2)
      ii(15) = count( pack(imag(e05),mask=ll) /= pack(imag(f05),mask=ll) )
      ii(16) = count( matmul(e06,e07) == matmul(f06,f07) )
!$omp end parallel workshare
      if (any(ii/=(/0,0,149,0,7,7,7,7,7,7,7,100,100,100,0,49/))) then
        print *,ii
        print *,"fail"
      endif
    end subroutine
