#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern unsigned int v3 (signed char, unsigned char, signed char, signed char);
extern unsigned int (*v4) (signed char, unsigned char, signed char, signed char);
extern void v5 (unsigned short, unsigned short, signed int);
extern void (*v6) (unsigned short, unsigned short, signed int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
signed char v13 (signed char);
signed char (*v14) (signed char) = v13;
extern unsigned short v15 (signed char, signed char, unsigned char);
extern unsigned short (*v16) (signed char, signed char, unsigned char);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern void v19 (signed short, unsigned int);
extern void (*v20) (signed short, unsigned int);
extern void v21 (unsigned short, signed char, signed int, unsigned char);
extern void (*v22) (unsigned short, signed char, signed int, unsigned char);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern void v25 (signed int, unsigned short, unsigned short);
extern void (*v26) (signed int, unsigned short, unsigned short);
extern unsigned int v27 (unsigned char, signed short, signed char, unsigned int);
extern unsigned int (*v28) (unsigned char, signed short, signed char, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v47 = -1;
unsigned char v46 = 0;
signed char v45 = 2;

signed int v23 (void)
{
{
for (;;) {
signed char v50 = -3;
signed char v49 = 1;
unsigned short v48 = 5;
trace++;
switch (trace)
{
case 4: 
return -3;
default: abort ();
}
}
}
}

signed char v13 (signed char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 5;
signed short v53 = -2;
unsigned short v52 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed int v57 = 3;
signed char v56 = -3;
unsigned short v55 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v58;
unsigned short v59;
unsigned short v60;
v58 = v57 + v57;
v59 = 6 + 2;
v60 = v55 + v55;
v25 (v58, v59, v60);
}
break;
case 2: 
{
signed char v61;
unsigned char v62;
signed char v63;
signed char v64;
unsigned int v65;
v61 = v56 - v56;
v62 = 3 + 2;
v63 = -2 + v56;
v64 = 2 - v56;
v65 = v3 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 8: 
{
signed int v66;
v66 = v29 ();
history[history_index++] = (int)v66;
}
break;
case 10: 
{
signed int v67;
v67 = v29 ();
history[history_index++] = (int)v67;
}
break;
case 12: 
return 2;
case 14: 
return 6;
default: abort ();
}
}
}
}
