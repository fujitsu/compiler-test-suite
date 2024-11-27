        ibig=2**28
        do i=0,15
        WRITE(2,*) i,ibig,i*ibig
        WRITE(1,*) i
        end do
rewind 1
do i=0,15
read(1,*) k;if(k/=i)print *,'error',i
enddo
print *,'pass'
        end
