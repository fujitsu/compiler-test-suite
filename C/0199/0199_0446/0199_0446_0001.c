#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, unsigned int);
extern unsigned char (*v2) (unsigned char, signed int, unsigned int);
extern signed char v3 (signed int, unsigned short, signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned short, signed int, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (signed char, unsigned char, signed int, unsigned short);
extern void (*v8) (signed char, unsigned char, signed int, unsigned short);
extern signed int v9 (unsigned char, unsigned char);
extern signed int (*v10) (unsigned char, unsigned char);
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
signed short v13 (signed short, signed short);
signed short (*v14) (signed short, signed short) = v13;
extern signed int v15 (signed short, unsigned char, signed int);
extern signed int (*v16) (signed short, unsigned char, signed int);
extern signed short v17 (unsigned char, unsigned short, signed short);
extern signed short (*v18) (unsigned char, unsigned short, signed short);
signed int v19 (signed int);
signed int (*v20) (signed int) = v19;
extern void v21 (unsigned short, unsigned short, signed int);
extern void (*v22) (unsigned short, unsigned short, signed int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (signed int, signed int, signed int, signed char);
extern void (*v26) (signed int, signed int, signed int, signed char);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed int v68 = 3;
unsigned char v67 = 3;
signed short v66 = 1;

unsigned int v27 (void)
{
{
for (;;) {
unsigned int v71 = 6U;
signed short v70 = -2;
signed char v69 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed int v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 4;
signed short v74 = -3;
signed char v73 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v76;
v76 = v23 ();
history[history_index++] = (int)v76;
}
break;
case 3: 
return v72;
default: abort ();
}
}
}
}

signed short v13 (signed short v77, signed short v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 6;
unsigned int v80 = 3U;
unsigned char v79 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
