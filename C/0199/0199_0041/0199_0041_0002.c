#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (signed short, unsigned char, signed int, unsigned char);
extern unsigned char (*v4) (signed short, unsigned char, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed char v9 (signed char, unsigned int, unsigned short);
extern signed char (*v10) (signed char, unsigned int, unsigned short);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
signed char v13 (unsigned int, unsigned char, unsigned int, signed int);
signed char (*v14) (unsigned int, unsigned char, unsigned int, signed int) = v13;
signed short v15 (unsigned char, signed char, unsigned char, signed int);
signed short (*v16) (unsigned char, signed char, unsigned char, signed int) = v15;
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern signed short v19 (unsigned int, signed int, unsigned short, unsigned int);
extern signed short (*v20) (unsigned int, signed int, unsigned short, unsigned int);
extern void v21 (unsigned short, unsigned short);
extern void (*v22) (unsigned short, unsigned short);
extern unsigned char v23 (unsigned char, signed short, unsigned int);
extern unsigned char (*v24) (unsigned char, signed short, unsigned int);
signed char v25 (unsigned char, unsigned int);
signed char (*v26) (unsigned char, unsigned int) = v25;
extern unsigned short v29 (signed int, signed int);
extern unsigned short (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v67 = 3;
unsigned char v66 = 4;
unsigned short v65 = 1;

signed char v25 (unsigned char v68, unsigned int v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = 3;
unsigned char v71 = 0;
signed int v70 = 1;
trace++;
switch (trace)
{
case 3: 
return -4;
case 11: 
return -3;
default: abort ();
}
}
}
}

signed short v15 (unsigned char v73, signed char v74, unsigned char v75, signed int v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 7;
signed short v78 = -1;
unsigned char v77 = 6;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v80;
unsigned int v81;
signed char v82;
v80 = v77 + v73;
v81 = 0U + 3U;
v82 = v25 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 12: 
return v78;
default: abort ();
}
}
}
}

signed char v13 (unsigned int v83, unsigned char v84, unsigned int v85, signed int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 4U;
unsigned short v88 = 4;
signed char v87 = -1;
trace++;
switch (trace)
{
case 8: 
return 2;
default: abort ();
}
}
}
}
