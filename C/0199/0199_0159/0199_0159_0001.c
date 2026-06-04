#include <stdlib.h>
extern unsigned short v1 (unsigned int);
extern unsigned short (*v2) (unsigned int);
unsigned char v3 (unsigned short);
unsigned char (*v4) (unsigned short) = v3;
unsigned short v5 (signed char, signed short);
unsigned short (*v6) (signed char, signed short) = v5;
unsigned int v7 (unsigned char, unsigned int, signed char);
unsigned int (*v8) (unsigned char, unsigned int, signed char) = v7;
extern void v9 (unsigned char, unsigned int, signed short, signed char);
extern void (*v10) (unsigned char, unsigned int, signed short, signed char);
extern void v11 (signed short, signed char, signed char);
extern void (*v12) (signed short, signed char, signed char);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned int v19 (unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned char);
extern void v21 (signed int, signed int, unsigned short);
extern void (*v22) (signed int, signed int, unsigned short);
extern signed short v23 (unsigned char, signed char, signed int, signed char);
extern signed short (*v24) (unsigned char, signed char, signed int, signed char);
extern signed char v25 (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed char (*v26) (unsigned short, unsigned char, unsigned int, unsigned short);
signed int v27 (unsigned short, unsigned char);
signed int (*v28) (unsigned short, unsigned char) = v27;
extern signed int v29 (unsigned short, unsigned short, signed char);
extern signed int (*v30) (unsigned short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v63 = 1;
unsigned int v62 = 7U;
signed int v61 = -3;

signed int v27 (unsigned short v64, unsigned char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 7U;
unsigned char v67 = 5;
signed int v66 = -3;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
return -2;
case 6: 
return -3;
case 8: 
return v66;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v69, unsigned int v70, signed char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = -3;
signed short v73 = -4;
unsigned short v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v75, signed short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = 2;
signed short v78 = -1;
signed int v77 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 5;
unsigned int v82 = 7U;
signed char v81 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
