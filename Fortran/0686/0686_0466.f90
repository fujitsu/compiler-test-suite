    module mod
     integer,pointer::parr(:,:)
     integer,target ::tarr(10,10)
     integer,allocatable::alc(:,:)
    end module

    program ompv2
     use mod
     integer a(10,10)
     integer b(10,10)
     integer,dimension(10,10)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13
     integer,dimension(10,10)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13
     integer,dimension(10,10)::e01,e02,e03,e04,e05,e06,e07
     real(8),dimension(10,10)::e08,e09,e10
     integer,dimension(10,10)::f01,f02,f03,f04,f05,f06,f07
     real(8),dimension(10,10)::f08,f09,f10
     integer arr1(10,10)
     integer arr2(10,10)
     integer arg1(10,10)
     integer arg2(10,10)
      n=10
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
        allocate(alc(10,10))
        alc=reshape( (/(i,i=1,100)/),(/10,10/) )
        arr1=reshape( (/((/1,2,3,4,5/),i=1,20)/),(/10,10/) )
        arr2=reshape( (/((/9,8,7,6,5/),i=1,20)/),(/10,10/) )
        arg1=reshape( (/((/2,3,4,3,2/),i=1,20)/),(/10,10/) )
        arg2=reshape( (/((/3,2,1,2,3/),i=1,20)/),(/10,10/) )
        tarr=2
        parr=>tarr
        a=reshape( (/(i,i=1,100)/),(/10,10/) )
        b=reshape( (/(i,i=200,2,-2)/),(/10,10/) )
      end subroutine
    end program

    subroutine sub1(a,b,arr1,arr2,arg1,arg2,                          &
                    c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13,n)
     use mod
     integer,dimension(n,n)::a,b,arr1,arr2,arg1,arg2
     integer,dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13
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
     integer,dimension(n,n)::a,b,arr1,arr2,arg1,arg2
     integer,dimension(n,n)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13
!$omp parallel
!$omp workshare
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
!$omp end workshare
!$omp end parallel
     end

    subroutine sub3(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                    d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
     integer,dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13
     integer,dimension(n,n)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13
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
     integer,dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13
     integer,dimension(n,n)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13
      logical(1)::l=.false.
!$omp parallel
!$omp workshare
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
!$omp end workshare
!$omp end parallel
      if (l) print *,"fail"
    end subroutine

    subroutine sub5(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                    d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,n)
     integer,dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13
     integer,dimension(n,n)::d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13
     logical(1)::l=.true.
!$omp parallel
!$omp workshare
      l = any(c01==d01)
      l = l.and.all(c02==d02)
      l = l.and.all(c03==d03)
      l = l.and.all(c04==d04)
      l = l.and.all(c05+c06==d05+d06)
      l = l.and.all(c07-c08==d07-d08)
      l = l.and.all(c09==d09)
      l = l.and.all(c10==d10)
      l = l.and.all(c11==d11).and.all(c12==d12).and.all(c13==d13)
!$omp end workshare
!$omp end parallel
      if (.not.l) print *,"fail"
    end subroutine

    subroutine sub6(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                    e01,e02,e03,e04,e05,e06,e07,e08,e09,e10,n)
     integer,dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13
     integer,dimension(n,n)::e01,e02,e03,e04,e05,e06,e07
     real(8),dimension(n,n)::e08,e09,e10
      e01 = transpose(c01)
      e02 = transpose(c02+1)
      e03 = transpose( transpose(c03) )
      e04 = transpose( matmul( c04-1,c05 ) )
      e05 = transpose( transpose(c05+1) )
      e06 = transpose( c06-1 )
      e07 = transpose( reshape( pack(c07,mask=.true.),(/10,10/) ) )
      e08 = dble( transpose(c08) / maxval( pack(c08,mask=.true.) ) )
      e09 = dble( matmul( transpose(c09+c10-c11),c10 ) )
      e10 = dble( transpose(matmul(c12,c13)) / minval( pack(c13,mask=.true.) ) )
    end subroutine

    subroutine sub7(c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13, &
                    f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,n)
     integer,dimension(n,n)::c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13
     integer,dimension(n,n)::f01,f02,f03,f04,f05,f06,f07
     real(8),dimension(n,n)::f08,f09,f10
!$omp parallel
!$omp workshare
      f01 = transpose(c01)
      f02 = transpose(c02+1)
      f03 = transpose( transpose(c03) )
      f04 = transpose( matmul( c04-1,c05 ) )
      f05 = transpose( transpose(c05+1) )
      f06 = transpose( c06-1 )
      f07 = transpose( reshape( pack(c07,mask=.true.),(/10,10/) ) )
      f08 = dble( transpose(c08) / maxval( pack(c08,mask=.true.) ) )
      f09 = dble( matmul( transpose(c09+c10-c11),c10 ) )
      f10 = dble( transpose(matmul(c12,c13)) / minval( pack(c13,mask=.true.) ) )
!$omp end workshare
!$omp end parallel
    end subroutine

    subroutine sub8(e01,e02,e03,e04,e05,e06,e07,e08,e09,e10, &
                    f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,n)
     integer,dimension(n,n)::e01,e02,e03,e04,e05,e06,e07
     real(8),dimension(n,n)::e08,e09,e10
     integer,dimension(n,n)::f01,f02,f03,f04,f05,f06,f07
     real(8),dimension(n,n)::f08,f09,f10
     integer::ii(16)=100
!$omp parallel
!$omp workshare
      ii(1) = count(e08-f08>1.0d-8)
      ii(2) = count((e10+e09)-(f10+f09)>1.0d-8)
      ii(3) = ii(3) + count(e01==f01)
      ii(4) = count(e02/=f02)
      ii(5:14) = count(e03-e04==f03-f04,dim=2)
      ii(15) = count( pack(e05,mask=e05>0) /= pack(f05,mask=f05>0) )
      ii(16) = count( matmul(e06,e07) == matmul(f06,f07) )
!$omp end workshare
!$omp end parallel
      if (any(ii/=(/0,0,200,0,10,10,10,10,10,10,10,10,10,10,0,100/))) then
        print *,ii
        print *,"fail"
      endif
    end subroutine
