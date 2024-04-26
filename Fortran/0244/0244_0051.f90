integer::arr(3,4)=22

associate(aa=>is_contiguous(arr(2,:)))
 if(aa .eqv. .false.) print*,'pass'
end associate
end
