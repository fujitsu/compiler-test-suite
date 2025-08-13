        ibig=2**28
        do i=0,15
        WRITE(57,*) i,ibig,i*ibig
        WRITE(56,*) i
        end do
rewind 56
do i=0,15
read(56,*) k;if(k/=i)print *,'error',i
enddo
print *,'pass'
        end
