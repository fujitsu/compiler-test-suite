        subroutine sub1(a,s,n)
        implicit none
        integer n,i
        real*16 a(n),s(n)
        do i=1,n
          a(i)=s(i)+1
        end do
        end
        subroutine sub2(a,s,n)
        implicit none
        integer n,i
        real*16 a(n),s(n)
        call inn
        contains
          subroutine  inn
          do i=1,n/2
            a(i)=s(i)-1
            call inn2
          end do
          end subroutine
          subroutine  inn2
          i=i+1
          end subroutine
        end
        subroutine sub3(a,s,n)
        implicit none
        integer n,i,j
        real*16 a(n),s(n)
        equivalence(i,j)
        do i=1,n
          a(i)=s(i)/2.3
          j=j+1
          j=j-1
        end do
        end
        program main
        real*16 a(10),s(10)
        s=1
        call sub1(a,s,10)
        print *,a(1:10:3)
        call sub2(a,s,10)
        print *,a(1:10:3)
        call sub3(a,s,10)

        if (any(abs(a(1:10:3)-(/&
      0.43478261770958729846762156419384092_16,&
      0.43478261770958729846762156419384092_16,&
      0.43478261770958729846762156419384092_16,&
      0.43478261770958729846762156419384092_16/))>0.1E-24))&
      print *,'error'
      print *,'0.43478261770958729846762156419384092 &
     &0.43478261770958729846762156419384092 &
     &0.43478261770958729846762156419384092 &
     &0.43478261770958729846762156419384092'
        end
