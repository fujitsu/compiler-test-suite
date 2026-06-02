#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char);
extern unsigned short (*v2) (unsigned char, signed char);
extern unsigned short v3 (unsigned char, signed short, signed int);
extern unsigned short (*v4) (unsigned char, signed short, signed int);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
unsigned int v7 (signed int, unsigned short, signed int);
unsigned int (*v8) (signed int, unsigned short, signed int) = v7;
signed short v9 (unsigned int, signed int, signed short);
signed short (*v10) (unsigned int, signed int, signed short) = v9;
extern signed char v11 (signed short, signed short, unsigned char, signed int);
extern signed char (*v12) (signed short, signed short, unsigned char, signed int);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed int v21 (signed short, signed int, signed short);
extern signed int (*v22) (signed short, signed int, signed short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned short);
extern void (*v28) (unsigned int, signed short, unsigned short);
extern void v29 (unsigned short, unsigned char, signed int);
extern void (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v50 = 6U;
unsigned char v49 = 1;
unsigned char v48 = 1;

signed int v19 (void)
{
{
for (;;) {
unsigned char v53 = 4;
signed int v52 = 2;
signed char v51 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed short v56 = 2;
unsigned short v55 = 0;
signed char v54 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned int v57, signed int v58, signed short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 1;
unsigned int v61 = 6U;
unsigned char v60 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed int v63, unsigned short v64, signed int v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 2U;
unsigned short v67 = 1;
unsigned short v66 = 7;
trace++;
switch (trace)
{
case 3: 
{
signed int v69;
v69 = v15 ();
history[history_index++] = (int)v69;
}
break;
case 5: 
{
signed int v70;
v70 = v15 ();
history[history_index++] = (int)v70;
}
break;
case 13: 
return v68;
default: abort ();
}
}
}
}
