#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed int v3 (signed int, unsigned char, signed int);
signed int (*v4) (signed int, unsigned char, signed int) = v3;
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern signed short v7 (unsigned int, signed int, unsigned short, signed int);
extern signed short (*v8) (unsigned int, signed int, unsigned short, signed int);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (unsigned short, unsigned int, signed int);
extern signed int (*v12) (unsigned short, unsigned int, signed int);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
unsigned char v15 (unsigned short, unsigned int, unsigned short, signed char);
unsigned char (*v16) (unsigned short, unsigned int, unsigned short, signed char) = v15;
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed short v19 (void);
extern signed short (*v20) (void);
signed int v21 (signed int, signed short);
signed int (*v22) (signed int, signed short) = v21;
extern unsigned short v23 (signed short, unsigned char, signed char);
extern unsigned short (*v24) (signed short, unsigned char, signed char);
extern signed int v25 (signed char, unsigned int, unsigned char, unsigned int);
extern signed int (*v26) (signed char, unsigned int, unsigned char, unsigned int);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
unsigned int v29 (unsigned char, unsigned int);
unsigned int (*v30) (unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v61 = 1;
signed short v60 = 0;
signed int v59 = 2;

unsigned int v29 (unsigned char v62, unsigned int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 5;
signed char v65 = 3;
signed int v64 = 1;
trace++;
switch (trace)
{
case 3: 
return v63;
default: abort ();
}
}
}
}

unsigned int v27 (void)
{
{
for (;;) {
signed int v69 = 3;
signed char v68 = -1;
unsigned short v67 = 0;
trace++;
switch (trace)
{
case 10: 
return 6U;
default: abort ();
}
}
}
}

signed int v21 (signed int v70, signed short v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = -3;
signed int v73 = 0;
unsigned char v72 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v75, unsigned int v76, unsigned short v77, signed char v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 1;
signed char v80 = -3;
signed char v79 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v82, unsigned char v83, signed int v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 4U;
unsigned short v86 = 4;
signed int v85 = -1;
trace++;
switch (trace)
{
case 1: 
return 0;
case 5: 
return v82;
default: abort ();
}
}
}
}
