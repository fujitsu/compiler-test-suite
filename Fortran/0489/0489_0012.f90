subroutine s1
  real(4) :: rr4
         real(8) :: rr8
         real(16) :: rr16
         complex(4) :: cc4,cc4_1,cc4_2
         complex(8) :: cc8,cc8_1,cc8_2
         complex(16) :: cc16,cc16_1,cc16_2
        
       
cc4_1=1
cc4_2=1
        cc4 = cc4_1
        cc4 = cc4_1+ cc4_2
        write(1,*)cc4
       
        cc8 = cc8_1
        cc8 = cc8_1+ cc8_2
        write(1,*)cc8
       
        cc16 = cc16_1
        cc16 = cc16_1+ cc16_2
        write(1,*),cc16
end
print *,'pass'
        end

