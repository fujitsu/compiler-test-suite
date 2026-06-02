#include <stdlib.h>
extern signed short v1 (signed short, signed int);
extern signed short (*v2) (signed short, signed int);
extern signed char v3 (signed char, signed short, unsigned char);
extern signed char (*v4) (signed char, signed short, unsigned char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed char v7 (signed int, signed int, unsigned short, signed short);
extern signed char (*v8) (signed int, signed int, unsigned short, signed short);
extern signed char v9 (signed short, unsigned short, unsigned char);
extern signed char (*v10) (signed short, unsigned short, unsigned char);
signed int v11 (signed int, unsigned int, signed int);
signed int (*v12) (signed int, unsigned int, signed int) = v11;
extern void v13 (signed int);
extern void (*v14) (signed int);
extern unsigned short v15 (unsigned short, unsigned int, signed char);
extern unsigned short (*v16) (unsigned short, unsigned int, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned int v21 (signed short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short, unsigned short, unsigned short);
extern signed int v23 (unsigned char, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int);
extern signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed short v27 (signed char, unsigned int, signed int, unsigned short);
extern signed short (*v28) (signed char, unsigned int, signed int, unsigned short);
extern signed int v29 (unsigned char, unsigned char, signed int);
extern signed int (*v30) (unsigned char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v52 = -3;
signed char v51 = 0;
unsigned int v50 = 1U;

signed int v11 (signed int v53, unsigned int v54, signed int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -2;
unsigned char v57 = 5;
unsigned char v56 = 4;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v59;
unsigned char v60;
signed int v61;
signed int v62;
v59 = 5 - v57;
v60 = 3 + v56;
v61 = v53 - v53;
v62 = v29 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 11: 
return v53;
case 13: 
return -2;
default: abort ();
}
}
}
}
