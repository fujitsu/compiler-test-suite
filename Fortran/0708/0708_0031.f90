  call s1
  print *,'pass'
  end
subroutine s1
integer,parameter::j1=1,j2=2,j3=3,j4=4,j5=5,j6=6,j7=7,j8=8,j9=9,ja=10
type ax
  integer a(1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8,9:9,10:10)
  integer b(1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8,9:9,10:10)
end type
type(ax)::a(1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8,9:9,10:10)=ax(10,11)

 write(4,*)a
 write(4,*)a(:,:,:,:,:,:,:,:,:,:)
 write(4,*)(a(:,:,:,:,:,:,:,:,:,k),k=10,10)
 write(4,*)((((((((((a(k1,k2,k3,k4,k5,k6,k7,k8,k9,ka),k1=j1,j1),k2=j2,j2),k3=j3,j3),k4=j4,j4),k5=j5,j5),k6=j6,j6),k7=j7,j7),k8=j8,j8),k9=j9,j9),ka=ja,ja)
 write(4,*)a%a(1,2,3,4,5,6,7,8,9,10),a%b(1,2,3,4,5,6,7,8,9,10)
 write(4,*)a(:,:,:,:,:,:,:,:,:,:)%a(1,2,3,4,5,6,7,8,9,10),&
           a(:,:,:,:,:,:,:,:,:,:)%b(1,2,3,4,5,6,7,8,9,10)
 write(4,*)(a(:,:,:,:,:,:,:,:,:,k)%a(1,2,3,4,5,6,7,8,9,10),k=10,10),&
           (a(:,:,:,:,:,:,:,:,:,k)%b(1,2,3,4,5,6,7,8,9,10),k=10,10)
 write(4,*)((((((((((a(k1,k2,k3,k4,k5,k6,k7,k8,k9,ka)%a,k1=j1,j1),k2=j2,j2),k3=j3,j3),k4=j4,j4),k5=j5,j5),k6=j6,j6),k7=j7,j7),k8=j8,j8),k9=j9,j9),ka=ja,ja),&
((((((((((a(k1,k2,k3,k4,k5,k6,k7,k8,k9,ka)%b,k1=j1,j1),k2=j2,j2),k3=j3,j3),k4=j4,j4),k5=j5,j5),k6=j6,j6),k7=j7,j7),k8=j8,j8),k9=j9,j9),ka=ja,ja)
 write(4,*)a(1,2,3,4,5,6,7,8,9,10)%a,a(1,2,3,4,5,6,7,8,9,10)%b
 write(4,*)&
    a(1,2,3,4,5,6,7,8,9,10)%&
           a(:,:,:,:,:,:,:,:,:,:),&
    a(1,2,3,4,5,6,7,8,9,10)%&
           b(:,:,:,:,:,:,:,:,:,:)
 write(4,*) &
  (a(1,2,3,4,5,6,7,8,9,10)%&
            a(:,:,:,:,:,:,:,:,:,k),k=10,10),&
  (a(1,2,3,4,5,6,7,8,9,10)%&
            b(:,:,:,:,:,:,:,:,:,k),k=10,10)
 write(4,*)((((((((((a%a(k1,k2,k3,k4,k5,k6,k7,k8,k9,ka),k1=j1,j1),k2=j2,j2),k3=j3,j3),k4=j4,j4),k5=j5,j5),k6=j6,j6),k7=j7,j7),k8=j8,j8),k9=j9,j9),ka=ja,ja),&
((((((((((a%b(k1,k2,k3,k4,k5,k6,k7,k8,k9,ka),k1=j1,j1),k2=j2,j2),k3=j3,j3),k4=j4,j4),k5=j5,j5),k6=j6,j6),k7=j7,j7),k8=j8,j8),k9=j9,j9),ka=ja,ja)
rewind 4
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'
read(4,*) kkk,nnn;if (any((/kkk,nnn/)/=(/10,11/)))print *,'fail'

end
