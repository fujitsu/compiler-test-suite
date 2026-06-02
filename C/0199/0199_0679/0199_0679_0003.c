#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned char);
extern signed char (*v2) (unsigned char, unsigned char);
unsigned char v3 (signed char, signed short, unsigned short);
unsigned char (*v4) (signed char, signed short, unsigned short) = v3;
extern unsigned char v5 (unsigned int, unsigned char, signed char, signed short);
extern unsigned char (*v6) (unsigned int, unsigned char, signed char, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
signed short v13 (signed int);
signed short (*v14) (signed int) = v13;
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern void v25 (signed char, unsigned char, signed char, unsigned int);
extern void (*v26) (signed char, unsigned char, signed char, unsigned int);
extern signed int v27 (signed short, signed short, signed char, unsigned char);
extern signed int (*v28) (signed short, signed short, signed char, unsigned char);
extern unsigned char v29 (signed char, unsigned int, signed char, unsigned int);
extern unsigned char (*v30) (signed char, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = -1;
signed short v76 = -1;
signed char v75 = -1;

signed short v13 (signed int v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = 0;
unsigned char v80 = 2;
signed int v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed char v82, signed short v83, unsigned short v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = -4;
signed short v86 = 1;
unsigned char v85 = 6;
trace++;
switch (trace)
{
case 9: 
return 4;
case 11: 
return v85;
default: abort ();
}
}
}
}
