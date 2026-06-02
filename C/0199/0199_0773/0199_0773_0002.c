#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern void v3 (unsigned int, signed char, signed int, signed short);
extern void (*v4) (unsigned int, signed char, signed int, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (unsigned char, signed char);
extern unsigned char (*v8) (unsigned char, signed char);
extern void v9 (signed char, signed short, signed int);
extern void (*v10) (signed char, signed short, signed int);
extern signed short v11 (signed char, signed int, signed short, unsigned short);
extern signed short (*v12) (signed char, signed int, signed short, unsigned short);
extern void v13 (unsigned short, unsigned char);
extern void (*v14) (unsigned short, unsigned char);
unsigned int v15 (unsigned char, unsigned char, unsigned int);
unsigned int (*v16) (unsigned char, unsigned char, unsigned int) = v15;
extern signed short v17 (signed char, unsigned short, unsigned short, unsigned short);
extern signed short (*v18) (signed char, unsigned short, unsigned short, unsigned short);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern unsigned int v21 (unsigned char, unsigned short, unsigned char);
extern unsigned int (*v22) (unsigned char, unsigned short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
void v27 (signed int, signed short, unsigned short, signed char);
void (*v28) (signed int, signed short, unsigned short, signed char) = v27;
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v46 = 6;
signed short v45 = -4;
signed int v44 = -2;

signed short v29 (void)
{
{
for (;;) {
unsigned char v49 = 0;
signed short v48 = -1;
signed short v47 = -3;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v50;
v50 = v23 ();
history[history_index++] = (int)v50;
}
break;
case 4: 
{
unsigned char v51;
signed short v52;
v51 = v49 + 4;
v52 = v25 (v51);
history[history_index++] = (int)v52;
}
break;
case 6: 
{
unsigned char v53;
signed short v54;
v53 = v49 - v49;
v54 = v25 (v53);
history[history_index++] = (int)v54;
}
break;
case 8: 
{
unsigned short v55;
v55 = v23 ();
history[history_index++] = (int)v55;
}
break;
case 10: 
{
unsigned short v56;
v56 = v23 ();
history[history_index++] = (int)v56;
}
break;
case 12: 
return v47;
case 14: 
return 0;
case 16: 
return v48;
default: abort ();
}
}
}
}

void v27 (signed int v57, signed short v58, unsigned short v59, signed char v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 1U;
unsigned char v62 = 4;
signed int v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v64, unsigned char v65, unsigned int v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 4U;
unsigned short v68 = 6;
signed char v67 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
