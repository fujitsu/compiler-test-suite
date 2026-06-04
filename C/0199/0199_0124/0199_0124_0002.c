#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, signed int);
extern unsigned char (*v2) (signed char, unsigned short, signed int);
extern signed char v3 (unsigned short, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int);
extern void v5 (signed int, unsigned char, signed short, unsigned char);
extern void (*v6) (signed int, unsigned char, signed short, unsigned char);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
unsigned short v9 (unsigned char, unsigned char);
unsigned short (*v10) (unsigned char, unsigned char) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
unsigned char v13 (signed short, signed int, unsigned char, signed int);
unsigned char (*v14) (signed short, signed int, unsigned char, signed int) = v13;
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern unsigned int v17 (unsigned int, signed short, signed char, signed short);
extern unsigned int (*v18) (unsigned int, signed short, signed char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (signed short, unsigned short);
extern signed short (*v24) (signed short, unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v29 (signed int, signed short, unsigned char, signed int);
extern unsigned short (*v30) (signed int, signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v81 = 2;
signed char v80 = -4;
signed short v79 = 1;

unsigned char v13 (signed short v82, signed int v83, unsigned char v84, signed int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = 1;
signed short v87 = -3;
signed char v86 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v89, unsigned char v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 4;
unsigned short v92 = 6;
signed char v91 = 0;
trace++;
switch (trace)
{
case 7: 
return 7;
default: abort ();
}
}
}
}
