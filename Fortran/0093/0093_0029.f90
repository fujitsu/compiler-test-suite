        complex :: cc(2,2) = (3,4) 
        complex :: qq(2,2) = (3,4) 

        if(is_contiguous(qq(1,:)%re) .neqv. .FALSE. )print*,101

        if(is_contiguous(cc(:,:)%re) .neqv. .FALSE. )print*,101
        if(is_contiguous(cc(1,:)%im) .neqv. .FALSE. )print*,102
        if(is_contiguous(cc(:,:)%re) .neqv. .FALSE. )print*,103
        if(is_contiguous(cc(1:2,:)%re) .neqv. .FALSE. )print*,104
        if(is_contiguous(cc(:,1:2)%re) .neqv. .FALSE. )print*,105
        if(is_contiguous(cc(:,1)%re) .neqv. .FALSE. )print*,106
        if(is_contiguous(cc(1:1,1:2)%re) .neqv. .FALSE. )print*,107
        if(is_contiguous(cc(:,2:1)%re) .neqv. .FALSE. )print*,108
        if(is_contiguous(cc(1,1:2)%re) .neqv. .FALSE. )print*,109
        print*,"PASS"
        end

