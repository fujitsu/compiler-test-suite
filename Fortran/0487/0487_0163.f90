         integer :: aa = 2,i
         b1: block
         integer :: ii(aa)
         ii = 20
        d1:   do j = 1,5
            write(1,*),"121"
           b2: block
            integer :: jj(aa)
            d2:do i = 1,5
            jj = 10
             write(1,*),"122"
             if(i==2) exit d2
             write(1,*),"123"
           end do d2
           write(1,*),"124",jj
          end block b2
          write(1,*),"125"
        end do d1
        write(1,*),ii
        end block b1
        200 continue
call chk
write(6,*),"pass"
        end
subroutine chk
integer k,k3(3)
rewind 1
read(1,*) k
if (k/= 121) print *,9001
read(1,*) k
if (k/= 122)print *,8002
read(1,*) k
if (k/= 123)print *,8003
read(1,*) k
if (k/= 122)print *,8004
read(1,*) k3
if (any(k3/= [124,10,10]))print *,8021
read(1,*) k
if (k/= 125)print *,8031
read(1,*) k
if (k/= 121)print *,8005
read(1,*) k
if (k/= 122)print *,8006
read(1,*) k
if (k/= 123)print *,8007
read(1,*) k
if (k/= 122)print *,8008
read(1,*) k3
if (any(k3/=[124,10,10]))print *,8009
read(1,*) k
if (k/= 125)print *,8101
read(1,*) k
if (k/= 121)print *,8201
read(1,*) k
if (k/= 122)print *,8301
read(1,*) k
if (k/= 123)print *,8401
read(1,*) k
if (k/= 122)print *,8501
read(1,*) k3
if (any(k3/=[124,10,10]))print *,8601
read(1,*) k
if (k/= 125)print *,8701
read(1,*) k
if (k/= 121)print *,8801
read(1,*) k
if (k/= 122)print *,8901
read(1,*) k
if (k/= 123)print *,1011
read(1,*) k
if (k/= 122)print *,2001
read(1,*) k3
if (any(k3/=[124,10,10]))print *,3001
read(1,*) k
if (k/= 125)print *,4401
read(1,*) k
if (k/= 121)print *,5001
read(1,*) k
if (k/= 122)print *,6001
read(1,*) k
if (k/= 123)print *,7001
read(1,*) k
if (k/= 122)print *,7801
read(1,*) k3
if (any(k3/= [124,10,10]))print *,9001
read(1,*) k
if (k/= 125)print *,8991
read(1,*) k3(1:2)
if (any(k3(1:2)/= 20))print *,8981
end
