      program mnkc20
      pointer (ptr0,a0),(ptr1,a1),(ptr2,a2),(ptr3,a3),
     1        (ptr4,b1),(ptr5,b2),(ptr6,b3)
      integer*8 a1(5),a2(5,5),a3(5,5,5),b1(5),b2(5,5),b3(5,5,5),
     *          c1(5),c2(5,5),c3(5,5,5),a0
      write(6,*) '=======test start===='
        ptr0=malloc(8)
        ptr1=malloc(40)
        ptr2=malloc(200)
        ptr3=malloc(1000)
        ptr4=malloc(40)
        ptr5=malloc(200)
        ptr6=malloc(1000)
      a0=1
      write(6,*) '=======test no.1====='
      call init(a1,a2,a3,b1,b2,b3,c1,c2,c3,ptr0)
      write(6,*) 'a0= ',a0
      call sub1(ptr1,ptr2,ptr3,ptr4,ptr5,ptr6,c1,c2,c3,a0)
      write(6,*) 'a1= ',a1
      write(6,*) 'a2= ',a2
      write(6,*) 'a3= ',a3
      write(6,*) 'b1= ',b1
      write(6,*) 'b2= ',b2
      write(6,*) 'b3= ',b3
      write(6,*) 'c1= ',c1
      write(6,*) 'c2= ',c2
      write(6,*) 'c3= ',c3
      write(6,*) '=======test no.2====='
      call init(a1,a2,a3,b1,b2,b3,c1,c2,c3,ptr0)
      call sub2(ptr1,ptr2,ptr3,ptr4,ptr5,ptr6,c1,c2,c3,a0)
      write(6,*) 'a1= ',a1
      write(6,*) 'a2= ',a2
      write(6,*) 'a3= ',a3
      write(6,*) 'b1= ',b1
      write(6,*) 'b2= ',b2
      write(6,*) 'b3= ',b3
      write(6,*) 'c1= ',c1
      write(6,*) 'c2= ',c2
      write(6,*) 'c3= ',c3
      write(6,*) '=======test no.3====='
      call init(a1,a2,a3,b1,b2,b3,c1,c2,c3,ptr0)
      call sub3(ptr1,ptr2,ptr3,ptr4,ptr5,ptr6,c1,c2,c3,a0)
      write(6,*) 'a1= ',a1
      write(6,*) 'a2= ',a2
      write(6,*) 'a3= ',a3
      write(6,*) 'b1= ',b1
      write(6,*) 'b2= ',b2
      write(6,*) 'b3= ',b3
      write(6,*) 'c1= ',c1
      write(6,*) 'c2= ',c2
      write(6,*) 'c3= ',c3
      write(6,*) '=======test no.4====='
      call init(a1,a2,a3,b1,b2,b3,c1,c2,c3,ptr0)
      call sub4(ptr1,ptr2,ptr3,ptr4,ptr5,ptr6,c1,c2,c3,a0)
      write(6,*) 'a1= ',a1
      write(6,*) 'a2= ',a2
      write(6,*) 'a3= ',a3
      write(6,*) 'b1= ',b1
      write(6,*) 'b2= ',b2
      write(6,*) 'b3= ',b3
      write(6,*) 'c1= ',c1
      write(6,*) 'c2= ',c2
      write(6,*) 'c3= ',c3
      write(6,*) '=======test end ====='
      stop
      end
c
      subroutine init(a1,a2,a3,b1,b2,b3,c1,c2,c3,ptr1)
      pointer (ptr1,n)
      integer*8 a1(5),a2(5,5),a3(5,5,5),b1(5),b2(5,5),b3(5,5,5),
     1          c1(5),c2(5,5),c3(5,5,5),n
      do  10  i=1,5
      do  20  j=1,5
      do  30  k=1,5
        n=5
        a1(i)=n-5
        a2(i,j)=n-5
        a3(i,j,k)=n-5
        b1(i)=n-5
        b2(i,j)=n-5
        b3(i,j,k)=n-5
        c1(i)=n-5
        c2(i,j)=n-5
        c3(i,j,k)=n-5
 30   continue
 20   continue
 10   continue
      return
      end
c
      subroutine sub1(ptr1,ptr2,ptr3,ptr4,ptr5,ptr6,c1,c2,c3,n)
      pointer (ptr1,a1),(ptr2,a2),(ptr3,a3),
     1        (ptr4,b1),(ptr5,b2),(ptr6,b3)
      integer*8 n,a1(5),a2(5,5),a3(5,5,5),b1(n),b2(n,n),b3(n,n,n),
     1          c1(n),c2(n,n),c3(n,n,n)
      do  10  i=1,n
        a1(i)=2**i
        a2(i,i)=2**i+n
        a3(i,i,i)=int(sin(real(i*8)))
        b1(i)=2**i
        b2(i,i)=2**i+n
        b3(i,i,i)=int(sin(real(i*8)))
        c1(i)=2**i
        c2(i,i)=2**i+n
        c3(i,i,i)=int(sin(real(i*8)))
 10   continue
      return
      end
c
      subroutine sub2(ptr1,ptr2,ptr3,ptr4,ptr5,ptr6,c1,c2,c3,n)
      pointer (ptr1,a1),(ptr2,a2),(ptr3,a3),
     1        (ptr4,b1),(ptr5,b2),(ptr6,b3)
      integer*8 n,a1(5),a2(5,5),a3(5,5,5),b1(n),b2(n,n),b3(n,n,n),
     1          c1(n),c2(n,n),c3(n,n,n),ps2,ps1,ps3,ps4,ps5,ps6
        ps1=ptr1
        ps2=ptr2
        ps3=ptr3
        ps4=ptr4
        ps5=ptr5
        ps6=ptr6
      do  10  i=1,n
        a1(1)=2**i
        a2(1,1)=2**i+n
        a3(1,1,1)=int(sin(real(i*8)))
        b1(1)=2**i
        b2(1,1)=2**i+n
        b3(1,1,1)=int(sin(real(i*8)))
        c1(i)=2**i
        c2(i,i)=2**i+n
        c3(i,i,i)=int(sin(real(i*8)))
        ptr1=ptr1+8
        ptr2=ptr2+48
        ptr3=ptr3+248
        ptr4=ptr4+8
        ptr5=ptr5+48
        ptr6=ptr6+248
 10   continue
       ptr1=ps1
       ptr2=ps2
       ptr3=ps3
       ptr4=ps4
       ptr5=ps5
       ptr6=ps6
      return
      end
c
      subroutine sub3(ptr1,ptr2,ptr3,ptr4,ptr5,ptr6,c1,c2,c3,n)
      pointer (ptr1,a1),(ptr2,a2),(ptr3,a3),
     1        (ptr4,b1),(ptr5,b2),(ptr6,b3)
      integer*8 n,a1(5),a2(5,5),a3(5,5,5),b1(n),b2(n,n),b3(n,n,n),
     1          c1(n),c2(n,n),c3(n,n,n)
      do  10  i=1,n
        a1(i)=i
        b1(i)=i
        c1(i)=i
      do  20  j=1,n
        a2(j,i)=i+n
        b2(j,i)=i+n
        c2(j,i)=i+n
      do  30  k=1,n
        a3(k,j,i)=i+n+n
        b3(k,j,i)=i+n+n
        c3(k,j,i)=i+n+n
 30   continue
 20   continue
 10   continue
      return
      end
c
      subroutine sub4(ptr1,ptr2,ptr3,ptr4,ptr5,ptr6,c1,c2,c3,n)
      pointer (ptr1,a1),(ptr2,a2),(ptr3,a3),
     1        (ptr4,b1),(ptr5,b2),(ptr6,b3)
      integer*8 n,a1(5),a2(5,5),a3(5,5,5),b1(n),b2(n,n),b3(n,n,n),
     1          c1(n),c2(n,n),c3(n,n,n),ps1,ps2,ps3,ps4,ps5,ps6
        ps1=ptr1
        ps2=ptr2
        ps3=ptr3
        ps4=ptr4
        ps5=ptr5
        ps6=ptr6
      do  10  i=1,n
        a1(1)=i
        b1(1)=i
        c1(i)=i
      do  20  j=1,n
        a2(1,1)=i+n
        b2(1,1)=i+n
        c2(j,i)=i+n
      do  30  k=1,n
        a3(1,1,1)=i+n+n
        b3(1,1,1)=i+n+n
        c3(k,j,i)=i+n+n
        ptr3=ptr3+8
        ptr6=ptr6+8
 30   continue
        ptr2=ptr2+8
        ptr5=ptr5+8
 20   continue
        ptr1=ptr1+8
        ptr4=ptr4+8
 10   continue
       ptr1=ps1
       ptr2=ps2
       ptr3=ps3
       ptr4=ps4
       ptr5=ps5
       ptr6=ps6
      return
      end
