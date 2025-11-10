
void other_file(){
 short s;
 s=0;
 if (s) goto lab;
 s++;
 lab:;
 s+=1;
 if (s) goto lab2;
  s--;
 lab2:;
  s++;
}
