#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (signed int, unsigned char);
extern unsigned short (*v6) (signed int, unsigned char);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
unsigned short v9 (signed char);
unsigned short (*v10) (signed char) = v9;
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned int v13 (signed int, unsigned short);
extern unsigned int (*v14) (signed int, unsigned short);
extern void v15 (void);
extern void (*v16) (void);
extern signed short v17 (signed char, unsigned int, signed char);
extern signed short (*v18) (signed char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed char, signed char, signed short);
extern signed int (*v22) (signed char, signed char, signed short);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern signed short v25 (signed int, unsigned int, signed short, signed int);
extern signed short (*v26) (signed int, unsigned int, signed short, signed int);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
signed char v29 (unsigned short, signed int, unsigned char, unsigned char);
signed char (*v30) (unsigned short, signed int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v69 = 3;
signed int v68 = 3;
signed int v67 = 2;

signed char v29 (unsigned short v70, signed int v71, unsigned char v72, unsigned char v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 3U;
signed int v75 = -4;
unsigned char v74 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned int v79 = 0U;
signed char v78 = 1;
unsigned char v77 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed char v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -4;
unsigned char v82 = 6;
signed short v81 = -1;
trace++;
switch (trace)
{
case 7: 
{
v15 ();
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}
