 call s1
 print *,'pass'
 end
 module m1
 logical(1),parameter::t=.true.,f=.false.
 interface operator(/=)
  module procedure x1,x4
 end interface
 interface int; module procedure z1,z4; end interface
 interface iachar; module procedure z1,z4; end interface
 interface achar; module procedure z1,z4; end interface
 interface res
  module procedure rc1,rc2,rc3,rc4,ra1,ra2
 end interface
 contains
  function rc1(x1,sh) result(r)
  real(16)::x1(:),r(:,:)
  integer::sh(:)
  pointer ::r
  allocate(r(sh(1),sh(2)))
  r=reshape(x1,(/sh(1),sh(2)/))
  end function
  function rc2(x1,sh) result(r)
  integer(8)::x1(:),r(:,:)
  integer::sh(:)
  pointer ::r
  allocate(r(sh(1),sh(2)))
  r=reshape(x1,(/sh(1),sh(2)/))
  end function
  function rc3(x1,sh) result(r)
  complex(16)::x1(:),r(:,:)
  integer::sh(:)
  pointer ::r
  allocate(r(sh(1),sh(2)))
  r=reshape(x1,(/sh(1),sh(2)/))
  end function
  function rc4(x1,sh) result(r)
  integer(4)::x1(:),r(:,:)
  integer::sh(:)
  pointer ::r
  allocate(r(sh(1),sh(2)))
  r=reshape(x1,(/sh(1),sh(2)/))
  end function
  function ra2(x1,sh) result(r)
  logical(4)::x1(:),r(:,:)
  integer::sh(:)
  pointer ::r
  allocate(r(sh(1),sh(2)))
  r=reshape(x1,(/sh(1),sh(2)/))
  end function
  function ra1(x1,sh) result(r)
  logical(1)::x1(:),r(:,:)
  integer::sh(:)
  pointer ::r
  allocate(r(sh(1),sh(2)))
  r=reshape(x1,(/sh(1),sh(2)/))
  end function
  function z1(x11) result(r)
  logical(1),intent(in),dimension(:,:)::x11
  logical(1),pointer   ,dimension(:,:)::r,y1
  logical(4),intent(in),dimension(:,:)::x41
  allocate(y1(size(x11,1),size(x11,2)))
  y1=x11
  goto 100
  entry     z4(x41) result(r)
  allocate(y1(size(x41,1),size(x41,2)))
  y1=x41
100 continue
  allocate(r (size(y1,1),size(y1,2)))
  r= y1
  end function
  function x1(x11,x12) result(r)
  logical(1),intent(in),dimension(:,:)::x11,x12
  logical(1),pointer   ,dimension(:,:)::r,y1,y2
  logical(4),intent(in),dimension(:,:)::x41,x42
  allocate(r (size(x11,1),size(x11,2)))
  allocate(y1(size(x11,1),size(x11,2)))
  allocate(y2(size(x11,1),size(x11,2)))
  y1=x11;y2=x12
  goto 100
  entry     x4(x41,x42) result(r)
  allocate(r (size(x41,1),size(x41,2)))
  allocate(y1(size(x41,1),size(x41,2)))
  allocate(y2(size(x41,1),size(x41,2)))
  y1=x41;y2=x42
100 continue
  do ixx2=1,size(r,2)
  do ixx1=1,size(r,1)
   select case(y1(ixx1,ixx2))
     case (t)
      select case(y2(ixx1,ixx2))
        case (t)
          r(ixx1,ixx2)=.not.y2(ixx1,ixx2)
        case (f)
          r(ixx1,ixx2)=y1(ixx1,ixx2)
      end select
     case (f)
      select case(y2(ixx1,ixx2))
        case (t)
          r(ixx1,ixx2)=y2(ixx1,ixx2)
        case (f)
          r(ixx1,ixx2)=y2(ixx1,ixx2)
      end select
   end select
 end do
 end do
 end function
 end
 subroutine s1
 use m1
 integer,parameter::k1=1,k2=2,k3=3,k4=4,k5=5,k6=6
 logical(1),dimension(2,3)::a1=reshape((/t,f,t,f,t,f/),(/2,3/))
 logical(4),dimension(2,3)::a2=reshape((/t,f,t,f,t,f/),(/2,3/))
 real(16)  ,dimension(2,3)::c1=reshape((/1,2,3,4,5,6/),(/2,3/))
 integer(8),dimension(2,3)::c2=reshape((/1,2,3,4,5,6/),(/2,3/))
 complex(16),dimension(2,3)::c3=reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/))
 integer(4)::v(3)=(/1,2,3/)
 call       ss1(k1,k2,k3,k4,k5,k6,a1,a2,c1,c2,c3,v)
 contains
 subroutine ss1(k1,k2,k3,k4,k5,k6,a1,a2,c1,c2,c3,v)
 logical(1),dimension(:,:)::a1
 logical(4),dimension(:,:)::a2
 real(16)  ,dimension(:,:)::c1
 integer(8),dimension(:,:)::c2
 complex(16),dimension(:,:)::c3
 integer(4)::v(:)
 do i1=v(1),v(2)-1;do i2=v(1)+1,v(2);do i3=k6-k4+1,k5-k2
 if (any(iachar(achar(int(res((/(1_8,2_8,3_8,4_8,5_8,6_8,iz=k1,k6+k4,k1)/),(/2,1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(1._16,2._16,3._16,4._16,5._16,6._16,iz=k1,k6+k4,k1)/),(/2,1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/((1._16,1._16),(2._16,2._16),(3._16,3._16),(4._16,4._16),(5._16,5._16),(6._16,6._16),iz=k1,k6+k4,k1)/),(/2,1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(.true._1,.false._1,.true._1,.false._1,.true._1,.false._1 ,iz=k1,k6+k4,k1)/),(/2,1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(.true._4,.false._4,.true._4,.false._4,.true._4,.false._4 ,iz=k1,k6+k4,k1)/),(/2,1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c2(v(1),v(1)),c2(v(2),v(1)),c2(v(1),v(2)),c2(v(2),v(2)),c2(v(1),v(3)),c2(v(2),v(3)),iz=k1,k6+k4,k1)/),(/2,1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c1(v(1),v(1)),c1(v(2),v(1)),c1(v(1),v(2)),c1(v(2),v(2)),c1(v(1),v(3)),c1(v(2),v(3)),iz=k1,k6+k4,k1)/),(/2,1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c3(v(1),v(1)),c3(v(2),v(1)),c3(v(1),v(2)),c3(v(2),v(2)),c3(v(1),v(3)),c3(v(2),v(3)),iz=k1,k6+k4,k1)/),(/2,1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(a1(v(1),v(1)),a1(v(2),v(1)),a1(v(1),v(2)),a1(v(2),v(2)),a1(v(1),v(3)),a1(v(2),v(3)),iz=k1,k6+k4,k1)/),(/2,1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(a2(v(1),v(1)),a2(v(2),v(1)),a2(v(1),v(2)),a2(v(2),v(2)),a2(v(1),v(3)),a2(v(2),v(3)),iz=k1,k6+k4,k1)/),(/2,1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(1_8,2_8,3_8,4_8,5_8,6_8,iz=k1,k6+k4,k1)/)/),(/2,1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(1._16,2._16,3._16,4._16,5._16,6._16,iz=k1,k6+k4,k1)/)/),(/2,1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/((1._16,1._16),(2._16,2._16),(3._16,3._16),(4._16,4._16),(5._16,5._16),(6._16,6._16),iz=k1,k6+k4,k1)/)/),(/2,1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(.true._1,.false._1,.true._1,.false._1,.true._1,.false._1 ,iz=k1,k6+k4,k1)/)/),(/2,1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(.true._4,.false._4,.true._4,.false._4,.true._4,.false._4 ,iz=k1,k6+k4,k1)/)/),(/2,1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c2(v(1),v(1)),c2(v(2),v(1)),c2(v(1),v(2)),c2(v(2),v(2)),c2(v(1),v(3)),c2(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c1(v(1),v(1)),c1(v(2),v(1)),c1(v(1),v(2)),c1(v(2),v(2)),c1(v(1),v(3)),c1(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c3(v(1),v(1)),c3(v(2),v(1)),c3(v(1),v(2)),c3(v(2),v(2)),c3(v(1),v(3)),c3(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(a1(v(1),v(1)),a1(v(2),v(1)),a1(v(1),v(2)),a1(v(2),v(2)),a1(v(1),v(3)),a1(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(a2(v(1),v(1)),a2(v(2),v(1)),a2(v(1),v(2)),a2(v(2),v(2)),a2(v(1),v(3)),a2(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c2(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/2,1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c1(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/2,1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c3(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/2,1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(a1(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/2,1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(a2(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/2,1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c2(v(k1),v(k1)),c2(v(k2:k2),v(k1:k1)),c2(v(k1),v(k2)),c2(v(k2:k2),v(k2:k2)),c2(v(k1),v(k3)),c2(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c1(v(k1),v(k1)),c1(v(k2:k2),v(k1:k1)),c1(v(k1),v(k2)),c1(v(k2:k2),v(k2:k2)),c1(v(k1),v(k3)),c1(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c3(v(k1),v(k1)),c3(v(k2:k2),v(k1:k1)),c3(v(k1),v(k2)),c3(v(k2:k2),v(k2:k2)),c3(v(k1),v(k3)),c3(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(a1(v(k1),v(k1)),a1(v(k2:k2),v(k1:k1)),a1(v(k1),v(k2)),a1(v(k2:k2),v(k2:k2)),a1(v(k1),v(k3)),a1(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(a2(v(k1),v(k1)),a2(v(k2:k2),v(k1:k1)),a2(v(k1),v(k2)),a2(v(k2:k2),v(k2:k2)),a2(v(k1),v(k3)),a2(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/2,1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 end do;end do;end do
 do i1=v(1),v(2)-1;do i2=v(1)+1,v(2);do i3=k6-k4+1,k5-k2
 if (any(iachar(achar(int(res((/(1_8,2_8,3_8,4_8,5_8,6_8,iz=k1,k6+k4,k1)/),(/k2,k1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(1._16,2._16,3._16,4._16,5._16,6._16,iz=k1,k6+k4,k1)/),(/k2,k1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/((1._16,1._16),(2._16,2._16),(3._16,3._16),(4._16,4._16),(5._16,5._16),(6._16,6._16),iz=k1,k6+k4,k1)/),(/k2,k1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(.true._1,.false._1,.true._1,.false._1,.true._1,.false._1 ,iz=k1,k6+k4,k1)/),(/k2,k1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(.true._4,.false._4,.true._4,.false._4,.true._4,.false._4 ,iz=k1,k6+k4,k1)/),(/k2,k1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c2(v(1),v(1)),c2(v(2),v(1)),c2(v(1),v(2)),c2(v(2),v(2)),c2(v(1),v(3)),c2(v(2),v(3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c1(v(1),v(1)),c1(v(2),v(1)),c1(v(1),v(2)),c1(v(2),v(2)),c1(v(1),v(3)),c1(v(2),v(3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c3(v(1),v(1)),c3(v(2),v(1)),c3(v(1),v(2)),c3(v(2),v(2)),c3(v(1),v(3)),c3(v(2),v(3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(a1(v(1),v(1)),a1(v(2),v(1)),a1(v(1),v(2)),a1(v(2),v(2)),a1(v(1),v(3)),a1(v(2),v(3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(a2(v(1),v(1)),a2(v(2),v(1)),a2(v(1),v(2)),a2(v(2),v(2)),a2(v(1),v(3)),a2(v(2),v(3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(1_8,2_8,3_8,4_8,5_8,6_8,iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(1._16,2._16,3._16,4._16,5._16,6._16,iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/((1._16,1._16),(2._16,2._16),(3._16,3._16),(4._16,4._16),(5._16,5._16),(6._16,6._16),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(.true._1,.false._1,.true._1,.false._1,.true._1,.false._1 ,iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(.true._4,.false._4,.true._4,.false._4,.true._4,.false._4 ,iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c2(v(1),v(1)),c2(v(2),v(1)),c2(v(1),v(2)),c2(v(2),v(2)),c2(v(1),v(3)),c2(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c1(v(1),v(1)),c1(v(2),v(1)),c1(v(1),v(2)),c1(v(2),v(2)),c1(v(1),v(3)),c1(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c3(v(1),v(1)),c3(v(2),v(1)),c3(v(1),v(2)),c3(v(2),v(2)),c3(v(1),v(3)),c3(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(a1(v(1),v(1)),a1(v(2),v(1)),a1(v(1),v(2)),a1(v(2),v(2)),a1(v(1),v(3)),a1(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(a2(v(1),v(1)),a2(v(2),v(1)),a2(v(1),v(2)),a2(v(2),v(2)),a2(v(1),v(3)),a2(v(2),v(3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c2(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c1(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(c3(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(a1(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(a2(v(k1:k2),v(k1:k3)),iz=k1,k6+k4,k1)/),(/k2,k1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c2(v(k1),v(k1)),c2(v(k2:k2),v(k1:k1)),c2(v(k1),v(k2)),c2(v(k2:k2),v(k2:k2)),c2(v(k1),v(k3)),c2(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=c2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c1(v(k1),v(k1)),c1(v(k2:k2),v(k1:k1)),c1(v(k1),v(k2)),c1(v(k2:k2),v(k2:k2)),c1(v(k1),v(k3)),c1(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=c1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(c3(v(k1),v(k1)),c3(v(k2:k2),v(k1:k1)),c3(v(k1),v(k2)),c3(v(k2:k2),v(k2:k2)),c3(v(k1),v(k3)),c3(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=c3(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(a1(v(k1),v(k1)),a1(v(k2:k2),v(k1:k1)),a1(v(k1),v(k2)),a1(v(k2:k2),v(k2:k2)),a1(v(k1),v(k3)),a1(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=a1(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 if (any(iachar(achar(int(res((/(/(a2(v(k1),v(k1)),a2(v(k2:k2),v(k1:k1)),a2(v(k1),v(k2)),a2(v(k2:k2),v(k2:k2)),a2(v(k1),v(k3)),a2(v(k2:k2),v(k3:k3)),iz=k1,k6+k4,k1)/)/),(/k2,k1/))/=a2(1:2:v(1),v(1):v(2)-1))))))print *,'fail'
 end do;end do;end do
 end subroutine
 end
