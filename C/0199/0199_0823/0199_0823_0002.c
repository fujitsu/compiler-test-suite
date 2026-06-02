#include <stdlib.h>
extern signed char v1 (signed int, signed char, unsigned short);
extern signed char (*v2) (signed int, signed char, unsigned short);
signed char v3 (void);
signed char (*v4) (void) = v3;
signed short v5 (signed short, unsigned char, unsigned short);
signed short (*v6) (signed short, unsigned char, unsigned short) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (signed char, unsigned short, unsigned char);
extern unsigned int (*v10) (signed char, unsigned short, unsigned char);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern signed short v13 (unsigned char, signed char, signed char);
extern signed short (*v14) (unsigned char, signed char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned char v23 (signed int, signed int, unsigned int, unsigned char);
extern unsigned char (*v24) (signed int, signed int, unsigned int, unsigned char);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v74 = 3;
unsigned char v73 = 4;
signed short v72 = 0;

signed char v11 (void)
{
{
for (;;) {
unsigned char v77 = 6;
signed char v76 = 3;
unsigned char v75 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v78, unsigned char v79, unsigned short v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = 1;
unsigned char v82 = 7;
unsigned short v81 = 5;
trace++;
switch (trace)
{
case 1: 
return v83;
case 5: 
return -1;
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
signed short v86 = 0;
unsigned short v85 = 1;
unsigned short v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
