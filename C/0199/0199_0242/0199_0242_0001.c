#include <stdlib.h>
signed short v1 (unsigned short, signed short, unsigned char);
signed short (*v2) (unsigned short, signed short, unsigned char) = v1;
signed int v3 (signed int, signed short, unsigned short);
signed int (*v4) (signed int, signed short, unsigned short) = v3;
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern unsigned int v7 (signed short, unsigned int);
extern unsigned int (*v8) (signed short, unsigned int);
extern unsigned short v9 (unsigned int, signed char);
extern unsigned short (*v10) (unsigned int, signed char);
extern signed char v11 (signed char, signed char);
extern signed char (*v12) (signed char, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
extern signed int v17 (unsigned short, signed int);
extern signed int (*v18) (unsigned short, signed int);
extern signed char v19 (signed int, signed int);
extern signed char (*v20) (signed int, signed int);
extern unsigned int v21 (unsigned char, signed char, unsigned int);
extern unsigned int (*v22) (unsigned char, signed char, unsigned int);
extern void v23 (signed short, unsigned int, signed short);
extern void (*v24) (signed short, unsigned int, signed short);
extern signed char v25 (unsigned short, unsigned char, signed char, signed int);
extern signed char (*v26) (unsigned short, unsigned char, signed char, signed int);
signed short v29 (signed char, unsigned char);
signed short (*v30) (signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v68 = 4;
unsigned int v67 = 1U;
signed char v66 = 2;

signed short v29 (signed char v69, unsigned char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 3;
unsigned short v72 = 7;
unsigned short v71 = 7;
trace++;
switch (trace)
{
case 4: 
return 2;
case 6: 
return -2;
case 8: 
return 0;
case 10: 
return -1;
default: abort ();
}
}
}
}

signed int v3 (signed int v74, signed short v75, unsigned short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 0;
signed int v78 = -4;
signed int v77 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v80, signed short v81, unsigned char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 3;
signed int v84 = 3;
unsigned int v83 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed char v86;
signed char v87;
signed char v88;
v86 = -2 + 2;
v87 = -2 - -3;
v88 = v11 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
