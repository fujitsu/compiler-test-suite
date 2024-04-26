       program main
       parameter(n=10,n1=10,n2=10)
       real * 8 a(n,n,n,n),b(n,n,n,n),c(n,n,n,n)
       real * 8 d(n,n,n),e(n,n,n)
       do l=1,n
       do k=1,n
       do j=1,n
       do i=1,n
         a(i,j,k,l) = i
         b(i,j,k,l) = j
         c(i,j,k,l) = k
         d(i,j,k) = l
         e(i,j,k) = l
       enddo
       enddo
       enddo
       enddo
       call sub1(a,b,c,n,n1,n2)
       call sub2(d,e,n,n1,n2)
       call sub3(d,e,n,n1,n2)
       call sub4(a,b,c,n,n1,n2)       
       print *," end "
       stop
       end
       subroutine sub1(a,b,c,n,n1,n2)
       real * 8 a(n,n,n,n),b(n,n,n,n),c(n,n,n,n)
!$omp parallel do
       do l=1,n2
       do k=1,n2
       do j=1,n2
       do i=1,n1
         b(k,l,j,i) = a(k,l,j,i)+b(k,l,j,l)+c(k,l,j,i)
       enddo
       enddo
       enddo
       enddo
       return
       end
       subroutine sub2(d,e,n,n1,n2)
       real * 8 d(n,n,n),e(n,n,n)
!$omp parallel do
       do k=1,n2
       do j=1,n2
       do i=1,n1
         e(j,k,i) = d(j,k,i)+e(j,k,i)
       enddo
       enddo
       enddo
       return
       end
       subroutine sub3(d,e,n,n1,n2)
       real * 8 d(n,n,n),e(n,n,n)
       do k=1,n2
       do j=1,n2
!$omp parallel do
       do i=1,n1
         d(j,k,i) = e(j,k,i)+d(j,k,i)
       enddo
       enddo
       enddo
       return
       end
       subroutine sub4(a,b,c,n,n1,n2)
       real * 8 a(n,n,n,n),b(n,n,n,n),c(n,n,n)

       do l=1,n2
!$omp parallel do
       do k=1,n2
       do j=1,n2
       do i=1,n1
         b(j,k,i,l) = a(j,k,i,l)+b(j,k,l,l)+c(j,k,i)
       enddo
       enddo
       enddo
       enddo
       return
       end
