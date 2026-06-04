#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (signed short, unsigned int, unsigned char, signed short);
extern void (*v4) (signed short, unsigned int, unsigned char, signed short);
extern void v5 (unsigned short, signed short, signed int);
extern void (*v6) (unsigned short, signed short, signed int);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern signed char v9 (signed char, signed char, unsigned short, signed char);
extern signed char (*v10) (signed char, signed char, unsigned short, signed char);
extern signed char v11 (unsigned short, signed short, unsigned char);
extern signed char (*v12) (unsigned short, signed short, unsigned char);
extern unsigned short v13 (unsigned short, signed int);
extern unsigned short (*v14) (unsigned short, signed int);
unsigned int v15 (signed int, signed int, unsigned char);
unsigned int (*v16) (signed int, signed int, unsigned char) = v15;
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
unsigned short v19 (unsigned int, unsigned short, signed char);
unsigned short (*v20) (unsigned int, unsigned short, signed char) = v19;
unsigned char v21 (unsigned int);
unsigned char (*v22) (unsigned int) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v49 = 2;
signed char v48 = -1;
unsigned short v47 = 5;

signed int v29 (void)
{
{
for (;;) {
signed char v52 = -2;
unsigned int v51 = 3U;
unsigned char v50 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned int v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -3;
signed short v55 = 0;
signed short v54 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned int v57, unsigned short v58, signed char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 2U;
unsigned int v61 = 1U;
unsigned int v60 = 2U;
trace++;
switch (trace)
{
case 7: 
{
signed int v63;
v63 = v23 ();
history[history_index++] = (int)v63;
}
break;
case 11: 
return v58;
default: abort ();
}
}
}
}

unsigned int v15 (signed int v64, signed int v65, unsigned char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 3;
signed short v68 = -4;
unsigned char v67 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
