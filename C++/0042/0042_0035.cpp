void test(){       

#line 0
     __LINE__ ;

#line 32768
     __LINE__ ;
     
#line 2147483647
     __LINE__ ;
     
#line 2147483648
     __LINE__ ;    
}

int main(){
    test();
} 

