    module mod
      integer(4),parameter::n=2
      integer(4)::a1(n),a2(n,n),a3(n,n,n),a4(n,n,n,n),a5(n,n,n,n,n)
      integer(4)::a6(n,n,n,n,n,n),a7(n,n,n,n,n,n,n)
    end module

    program foralls
     use mod
      a1=(/(i,i=1,n)/)
      a2=reshape((/(i,i=1,n**2)/),(/n,n/))
      a3=reshape((/(i,i=1,n**3)/),(/n,n,n/))
      a4=reshape((/(i,i=1,n**4)/),(/n,n,n,n/))
      a5=reshape((/(i,i=1,n**5)/),(/n,n,n,n,n/))
      a6=reshape((/(i,i=1,n**6)/),(/n,n,n,n,n,n/))
      a7=reshape((/(i,i=1,n**7)/),(/n,n,n,n,n,n,n/))
      call sub1(2,2,2,2,2,2,2,1)
      call sub2()
      print *,'pass'
    end program foralls

    subroutine sub1(n1,n2,n3,n4,n5,n6,n7,k)
     use mod
        forall(i7=1:n7:k,a1(i7)>=2)
          a1(i7)=a1(i7)+1
          forall(i6=1:n6:k,a2(i7,i6)>=4)
            a2(i7,i6)=a2(i7,i6)+1
            forall(i5=1:n5:k,a3(i7,i6,i5)>=6)
              a3(i7,i6,i5)=a3(i7,i6,i5)+1
              forall(i4=1:n4:k,a4(i7,i6,i5,i4)>=8)
                a4(i7,i6,i5,i4)=a4(i7,i6,i5,i4)+1
                forall(i3=1:n3:k,a5(i7,i6,i5,i4,i3)>=10)
                  a5(i7,i6,i5,i4,i3)=a5(i7,i6,i5,i4,i3)+1
                  forall(i2=1:n2:k,a6(i7,i6,i5,i4,i3,i2)>=12)
                    a6(i7,i6,i5,i4,i3,i2)=a6(i7,i6,i5,i4,i3,i2)+1
                    forall(i1=1:n1:k,a7(i7,i6,i5,i4,i3,i2,i1)>=14)
                      a7(i7,i6,i5,i4,i3,i2,i1)=a7(i7,i6,i5,i4,i3,i2,i1)+1
                    endforall
                  endforall
                endforall
              endforall
            endforall
          endforall
        endforall
    end subroutine
    subroutine sub2()
     use mod
        if (any(a1/=(/1,3/))) print *,'a1->',a1
        if (any(a2/=reshape((/1,2,3,5/),(/2,2/)))) print *,'a2->',a2
        if (any(a3/=reshape((/1,2,3,4,5,6,7,9/),(/2,2,2/)))) print *,'a3->',a3
        if (any(a4/=reshape((/1,2,3,4,5,6,7,9,9,10,11,12,13,14,15,17/), &
                            (/2,2,2,2/)))) print *,'a4->',a4
        if (any(a5/=reshape((/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,17,     &
                             18,19,20,21,22,23,25,25,26,27,28,29,30,31,33/), &
                            (/2,2,2,2,2/)))) print *,'a5->',a5
        if (any(a6/=reshape((/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,17,18,   &
                             19,20,21,22,23,25,25,26,27,28,29,30,31,33,33,34, &
                             35,36,37,38,39,40,41,42,43,44,45,46,47,49,49,    &
                             50,51,52,53,54,55,57,57,58,59,60,61,62,63,65/),  &
                            (/2,2,2,2,2,2/)))) print *,'a6->',a6
        if (any(a7/=reshape((/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,17,18,   &
                             19,20,21,22,23,25,25,26,27,28,29,30,31,33,33,    &
                             34,35,36,37,38,39,40,41,42,43,44,45,46,47,49,    &
                             49,50,51,52,53,54,55,57,57,58,59,60,61,62,63,65, & 
                             65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,81, &
                             81,82,83,84,85,86,87,89,89,90,91,92,93,94,95,97, &
                             97,98,99,100,101,102,103,104,105,106,107,108,109,&
                             110,111,113,113,114,115,116,117,118,119,121,121, &
                             122,123,124,125,126,127,129/),                   &
                            (/2,2,2,2,2,2,2/)))) print *,'a7->',a7
        if (any(pack(a7,mask=.true.)/= &
                            (/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,17,18,   &
                             19,20,21,22,23,25,25,26,27,28,29,30,31,33,33,    &
                             34,35,36,37,38,39,40,41,42,43,44,45,46,47,49,    &
                             49,50,51,52,53,54,55,57,57,58,59,60,61,62,63,65, & 
                             65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,81, &
                             81,82,83,84,85,86,87,89,89,90,91,92,93,94,95,97, &
                             97,98,99,100,101,102,103,104,105,106,107,108,109,&
                             110,111,113,113,114,115,116,117,118,119,121,121, &
                             122,123,124,125,126,127,129/))) print *,'a7->',a7
    end subroutine