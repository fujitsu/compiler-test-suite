#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned short);
extern unsigned int (*v2) (unsigned int, unsigned short);
extern signed int v3 (unsigned short, signed short, signed char);
extern signed int (*v4) (unsigned short, signed short, signed char);
extern signed short v5 (signed short, unsigned short, unsigned char, unsigned int);
extern signed short (*v6) (signed short, unsigned short, unsigned char, unsigned int);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned char, unsigned char, unsigned short);
extern signed short (*v12) (unsigned char, unsigned char, unsigned short);
signed int v13 (signed short, signed int, signed char, unsigned char);
signed int (*v14) (signed short, signed int, signed char, unsigned char) = v13;
extern void v15 (unsigned char, unsigned short);
extern void (*v16) (unsigned char, unsigned short);
extern unsigned char v17 (signed int, unsigned char, signed char, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char, signed char, unsigned char);
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (signed int, unsigned char, unsigned short);
extern signed short (*v24) (signed int, unsigned char, unsigned short);
extern signed short v25 (signed char);
extern signed short (*v26) (signed char);
extern signed char v27 (signed char, unsigned short);
extern signed char (*v28) (signed char, unsigned short);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v76 = 2;
signed short v75 = 0;
signed short v74 = -2;

signed int v13 (signed short v77, signed int v78, signed char v79, unsigned char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 1;
signed char v82 = -3;
unsigned short v81 = 7;
trace++;
switch (trace)
{
case 2: 
return -1;
case 4: 
{
signed char v84;
signed short v85;
v84 = v82 - v79;
v85 = v25 (v84);
history[history_index++] = (int)v85;
}
break;
case 6: 
{
signed char v86;
signed short v87;
v86 = v82 - v79;
v87 = v25 (v86);
history[history_index++] = (int)v87;
}
break;
case 8: 
return v78;
case 10: 
{
signed char v88;
signed short v89;
v88 = v82 + 3;
v89 = v25 (v88);
history[history_index++] = (int)v89;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
