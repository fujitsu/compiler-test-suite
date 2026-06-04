#include <stdlib.h>
unsigned char v1 (unsigned int, signed int);
unsigned char (*v2) (unsigned int, signed int) = v1;
extern signed short v3 (signed short, unsigned char, unsigned int, signed char);
extern signed short (*v4) (signed short, unsigned char, unsigned int, signed char);
extern signed int v5 (unsigned int, unsigned char, signed int, signed char);
extern signed int (*v6) (unsigned int, unsigned char, signed int, signed char);
extern signed char v7 (unsigned short, unsigned char, unsigned int, unsigned char);
extern signed char (*v8) (unsigned short, unsigned char, unsigned int, unsigned char);
extern unsigned int v9 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int, unsigned int);
extern unsigned char v11 (unsigned int, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned char);
extern unsigned short v13 (signed char, unsigned char, unsigned short, signed int);
extern unsigned short (*v14) (signed char, unsigned char, unsigned short, signed int);
extern unsigned char v15 (unsigned short, unsigned short, signed char);
extern unsigned char (*v16) (unsigned short, unsigned short, signed char);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern signed int v19 (unsigned char);
extern signed int (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short, signed short);
extern unsigned short (*v24) (signed short, signed short);
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
unsigned short v27 (unsigned int, signed short, signed short);
unsigned short (*v28) (unsigned int, signed short, signed short) = v27;
extern void v29 (signed char, signed char, signed char, unsigned short);
extern void (*v30) (signed char, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v66 = 2U;
signed int v65 = -3;
unsigned char v64 = 4;

unsigned short v27 (unsigned int v67, signed short v68, signed short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 2;
signed char v71 = -4;
unsigned int v70 = 2U;
trace++;
switch (trace)
{
case 3: 
return 2;
case 5: 
return 2;
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v73, signed int v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = -1;
signed char v76 = -2;
signed char v75 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v78;
unsigned char v79;
unsigned int v80;
signed char v81;
signed short v82;
v78 = -2 + -3;
v79 = 0 - 4;
v80 = 3U + 0U;
v81 = v76 + v75;
v82 = v3 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 16: 
return 0;
default: abort ();
}
}
}
}
