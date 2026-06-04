#include <stdlib.h>
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern unsigned short v9 (signed int, signed int);
extern unsigned short (*v10) (signed int, signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
signed short v13 (signed int, unsigned char);
signed short (*v14) (signed int, unsigned char) = v13;
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern unsigned int v17 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned int v19 (signed char, unsigned short, unsigned short);
extern unsigned int (*v20) (signed char, unsigned short, unsigned short);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern unsigned int v23 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned int, signed int, unsigned int);
signed int v25 (unsigned char, unsigned int, signed short, unsigned short);
signed int (*v26) (unsigned char, unsigned int, signed short, unsigned short) = v25;
extern void v27 (unsigned int, unsigned short);
extern void (*v28) (unsigned int, unsigned short);
extern void v29 (unsigned int, unsigned char);
extern void (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v67 = 2U;
signed char v66 = -2;
unsigned char v65 = 1;

signed int v25 (unsigned char v68, unsigned int v69, signed short v70, unsigned short v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 2;
signed int v73 = 3;
signed short v72 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
signed short v77 = 1;
unsigned char v76 = 7;
unsigned short v75 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v78, unsigned char v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 1;
unsigned int v81 = 7U;
unsigned char v80 = 1;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
return 3;
case 6: 
return 1;
case 8: 
return -3;
case 10: 
{
signed char v83;
v83 = v11 ();
history[history_index++] = (int)v83;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned short v86 = 2;
signed char v85 = -1;
unsigned short v84 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
