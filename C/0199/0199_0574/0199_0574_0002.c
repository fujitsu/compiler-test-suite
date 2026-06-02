#include <stdlib.h>
unsigned char v1 (signed char, signed short, unsigned char);
unsigned char (*v2) (signed char, signed short, unsigned char) = v1;
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed short v7 (signed char, signed int);
extern signed short (*v8) (signed char, signed int);
unsigned char v9 (signed int, signed short, unsigned char, signed short);
unsigned char (*v10) (signed int, signed short, unsigned char, signed short) = v9;
extern unsigned short v11 (unsigned char, unsigned char, signed short, signed int);
extern unsigned short (*v12) (unsigned char, unsigned char, signed short, signed int);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
extern unsigned char v17 (unsigned char, signed int, unsigned short, unsigned short);
extern unsigned char (*v18) (unsigned char, signed int, unsigned short, unsigned short);
extern signed short v19 (signed char, unsigned int);
extern signed short (*v20) (signed char, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned short v23 (signed int, unsigned char, unsigned int, signed short);
extern unsigned short (*v24) (signed int, unsigned char, unsigned int, signed short);
extern unsigned int v25 (signed short, unsigned char, signed char);
extern unsigned int (*v26) (signed short, unsigned char, signed char);
extern unsigned int v27 (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned int (*v28) (unsigned short, unsigned char, unsigned char, unsigned int);
extern void v29 (signed short, unsigned int, signed char, signed int);
extern void (*v30) (signed short, unsigned int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v86 = 0;
unsigned short v85 = 0;
signed char v84 = -3;

unsigned char v9 (signed int v87, signed short v88, unsigned char v89, signed short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 0;
unsigned char v92 = 1;
signed short v91 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v94, signed short v95, unsigned char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 0;
unsigned char v98 = 3;
signed char v97 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v100;
v100 = v13 ();
history[history_index++] = (int)v100;
}
break;
case 2: 
{
unsigned short v101;
unsigned short v102;
signed short v103;
v101 = 1 + 7;
v102 = 4 - 4;
v103 = v3 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}
