#include <stdlib.h>
unsigned short v1 (signed short, unsigned short, signed short, signed int);
unsigned short (*v2) (signed short, unsigned short, signed short, signed int) = v1;
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
extern unsigned short v5 (unsigned short, signed char, unsigned char, unsigned int);
extern unsigned short (*v6) (unsigned short, signed char, unsigned char, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (unsigned char, signed int);
extern unsigned short (*v10) (unsigned char, signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (unsigned short, unsigned char, unsigned char, unsigned short);
extern signed char (*v16) (unsigned short, unsigned char, unsigned char, unsigned short);
unsigned char v17 (unsigned short);
unsigned char (*v18) (unsigned short) = v17;
extern signed char v19 (signed short, unsigned int, unsigned char, unsigned int);
extern signed char (*v20) (signed short, unsigned int, unsigned char, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (signed short, unsigned char, unsigned short, signed int);
extern signed short (*v24) (signed short, unsigned char, unsigned short, signed int);
extern signed char v25 (signed int, signed short, unsigned char, unsigned char);
extern signed char (*v26) (signed int, signed short, unsigned char, unsigned char);
extern signed char v27 (unsigned short, unsigned char, unsigned short, signed int);
extern signed char (*v28) (unsigned short, unsigned char, unsigned short, signed int);
extern void v29 (unsigned char, signed char);
extern void (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v69 = 2;
signed short v68 = -1;
unsigned int v67 = 1U;

unsigned char v17 (unsigned short v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 1;
signed int v72 = 3;
signed int v71 = -3;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v74;
signed int v75;
unsigned short v76;
v74 = 4 - v73;
v75 = v72 - -4;
v76 = v9 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 4: 
return 2;
case 6: 
return 7;
case 8: 
{
unsigned short v77;
unsigned char v78;
unsigned short v79;
signed int v80;
signed char v81;
v77 = v70 + v70;
v78 = v73 + 5;
v79 = 2 - 6;
v80 = v72 + v72;
v81 = v27 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 10: 
return 0;
default: abort ();
}
}
}
}

unsigned short v1 (signed short v82, unsigned short v83, signed short v84, signed int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 3;
signed char v87 = 0;
unsigned short v86 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v89;
unsigned char v90;
v89 = v83 - v86;
v90 = v3 (v89);
history[history_index++] = (int)v90;
}
break;
case 12: 
return v86;
default: abort ();
}
}
}
}
