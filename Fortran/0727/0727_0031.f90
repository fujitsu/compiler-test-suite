    module m1
       interface assignment(=)
          module procedure x
       end interface
       integer,dimension(2,3):: aa=reshape((/1,2,3,4,5,6/),(/2,3/))
       contains
        subroutine x(a1,a2)
        character*(*),dimension(:,:),intent(out)::a1
        integer,dimension(:,:),intent(in)::a2
        aa=reshape((/11,12,13,14,15,16/),(/2,3/))
        do i2=1,2;do i3=1,3
         select case(a2(i2,i3))
           case (1); a1(i2,i3)='1'
           case (2); a1(i2,i3)='2'
           case (3); a1(i2,i3)='3'
           case (4); a1(i2,i3)='4'
           case (5); a1(i2,i3)='5'
           case (6); a1(i2,i3)='6'
         end select
        end do;end do
        end subroutine
    end 
    use m1
    character,dimension(2,3):: a
    a=aa
    if (any(a/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
    if (any(aa/=reshape((/11,12,13,14,15,16/),(/2,3/))))write(6,*) "NG"
    print *,'pass'
    end
 
