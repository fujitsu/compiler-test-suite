#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern void v3 (unsigned int, signed char);
extern void (*v4) (unsigned int, signed char);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern void v7 (unsigned short, signed short, unsigned int);
extern void (*v8) (unsigned short, signed short, unsigned int);
extern unsigned int v9 (signed int, signed char, unsigned char);
extern unsigned int (*v10) (signed int, signed char, unsigned char);
void v11 (signed char, unsigned short, signed char, unsigned int);
void (*v12) (signed char, unsigned short, signed char, unsigned int) = v11;
extern unsigned int v13 (signed int, signed char, signed char);
extern unsigned int (*v14) (signed int, signed char, signed char);
extern void v15 (signed int, signed int);
extern void (*v16) (signed int, signed int);
extern signed int v17 (unsigned char, unsigned char, unsigned int);
extern signed int (*v18) (unsigned char, unsigned char, unsigned int);
extern unsigned int v19 (unsigned int, unsigned short, signed short);
extern unsigned int (*v20) (unsigned int, unsigned short, signed short);
signed short v21 (unsigned int, unsigned short, unsigned int, signed short);
signed short (*v22) (unsigned int, unsigned short, unsigned int, signed short) = v21;
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern unsigned short v27 (unsigned int, signed int, signed short);
extern unsigned short (*v28) (unsigned int, signed int, signed short);
extern unsigned char v29 (signed char, signed short, unsigned char);
extern unsigned char (*v30) (signed char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v45 = 1;
unsigned int v44 = 2U;
unsigned int v43 = 1U;

signed short v21 (unsigned int v46, unsigned short v47, unsigned int v48, signed short v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 4U;
unsigned int v51 = 1U;
signed short v50 = 3;
trace++;
switch (trace)
{
case 7: 
{
signed char v53;
signed int v54;
v53 = 0 - 0;
v54 = v23 (v53);
history[history_index++] = (int)v54;
}
break;
case 9: 
{
signed char v55;
signed int v56;
v55 = 3 + 0;
v56 = v23 (v55);
history[history_index++] = (int)v56;
}
break;
case 11: 
return v50;
default: abort ();
}
}
}
}

void v11 (signed char v57, unsigned short v58, signed char v59, unsigned int v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = -4;
signed short v62 = 0;
unsigned short v61 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned char v66 = 5;
signed int v65 = 3;
unsigned char v64 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v67;
signed int v68;
v67 = 2U + 7U;
v68 = v25 (v67);
history[history_index++] = (int)v68;
}
break;
case 2: 
{
unsigned short v69;
unsigned char v70;
v69 = 6 - 0;
v70 = v5 (v69);
history[history_index++] = (int)v70;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
