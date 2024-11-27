integer, dimension(2) :: disposition = (/2,1/)
integer, dimension(4,3) ::gparm
integer, dimension(12) :: gpar =(/ (i,i=1,12,1) /)

gparm = reshape (SOURCE=gpar,  SHAPE= shape(gparm) , ORDER=disposition)

      do k=1,4
         write(1,110)gparm(k,:)
 110     format(3i4)
      enddo
rewind 1
read (1,*) j1,j2,j3;if (any((/j1,j2,j3/)/=(/1,2,3/)))write(6,*) "NG"
read (1,*) j1,j2,j3;if (any((/j1,j2,j3/)/=(/4,5,6/)))write(6,*) "NG"
read (1,*) j1,j2,j3;if (any((/j1,j2,j3/)/=(/7,8,9/)))write(6,*) "NG"
read (1,*) j1,j2,j3;if (any((/j1,j2,j3/)/=(/10,11,12/)))write(6,*) "NG"
print *,'pass'
end
