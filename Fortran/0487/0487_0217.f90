  integer :: i,j

         do j = 1,4
          aa: block
           integer :: bb(j+1)
            do i=1,j+1
             bb(i) = i+1
             write(1,*)j,i,bb(i)
             if (i==j) exit aa
           end do
        end block aa
          write(1,*) j
        end do

rewind 1
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[1,1,2])) print *,101
read (1,*) k1
if (any([k1]/=[1])) print *,102
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[2,1,2])) print *,101
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[2,2,3])) print *,101
read (1,*) k1
if (any([k1]/=[2])) print *,102
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[3,1,2])) print *,101
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[3,2,3])) print *,101
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[3,3,4])) print *,101
read (1,*) k1
if (any([k1]/=[3])) print *,102
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[4,1,2])) print *,101
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[4,2,3])) print *,101
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[4,3,4])) print *,101
read (1,*) k1,k2,k3
if (any([k1,k2,k3]/=[4,4,5])) print *,101
read (1,*) k1
if (any([k1]/=[4])) print *,102
print *,'pass'
        end
