#include <stdlib.h>
signed int v1 (signed char);
signed int (*v2) (signed char) = v1;
extern unsigned short v3 (signed char, unsigned char);
extern unsigned short (*v4) (signed char, unsigned char);
extern unsigned char v5 (unsigned char, unsigned char, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned char, unsigned short);
extern unsigned short v7 (unsigned short, signed int, unsigned short);
extern unsigned short (*v8) (unsigned short, signed int, unsigned short);
extern unsigned char v9 (unsigned char, unsigned short, signed int);
extern unsigned char (*v10) (unsigned char, unsigned short, signed int);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern signed short v13 (unsigned short, unsigned char, unsigned short);
extern signed short (*v14) (unsigned short, unsigned char, unsigned short);
unsigned short v15 (unsigned char, unsigned char);
unsigned short (*v16) (unsigned char, unsigned char) = v15;
extern unsigned char v17 (signed short, unsigned char, signed char, signed int);
extern unsigned char (*v18) (signed short, unsigned char, signed char, signed int);
extern void v19 (void);
extern void (*v20) (void);
extern signed int v21 (unsigned char, unsigned short, signed char, unsigned int);
extern signed int (*v22) (unsigned char, unsigned short, signed char, unsigned int);
extern void v23 (unsigned short, unsigned char, signed char, unsigned int);
extern void (*v24) (unsigned short, unsigned char, signed char, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short);
extern unsigned short v29 (signed char, signed int, signed int);
extern unsigned short (*v30) (signed char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v53 = -4;
unsigned int v52 = 3U;
signed short v51 = -4;

unsigned short v15 (unsigned char v54, unsigned char v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 3;
signed int v57 = 0;
unsigned char v56 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = -4;
unsigned int v61 = 6U;
signed short v60 = 3;
trace++;
switch (trace)
{
case 0: 
return 2;
case 1: 
{
unsigned short v63;
unsigned char v64;
signed char v65;
unsigned int v66;
v63 = 6 + 5;
v64 = 7 - 5;
v65 = 1 + v62;
v66 = 4U + v61;
v23 (v63, v64, v65, v66);
}
break;
case 3: 
{
v19 ();
}
break;
case 9: 
{
unsigned short v67;
signed int v68;
unsigned short v69;
unsigned short v70;
v67 = 5 + 3;
v68 = -4 - -2;
v69 = 4 + 7;
v70 = v7 (v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}
