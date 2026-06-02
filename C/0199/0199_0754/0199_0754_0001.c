#include <stdlib.h>
extern signed char v1 (signed short);
extern signed char (*v2) (signed short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern void v5 (unsigned char, unsigned short);
extern void (*v6) (unsigned char, unsigned short);
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
void v9 (signed int, signed short, unsigned int);
void (*v10) (signed int, signed short, unsigned int) = v9;
void v11 (void);
void (*v12) (void) = v11;
extern unsigned char v13 (signed short, signed short, signed short);
extern unsigned char (*v14) (signed short, signed short, signed short);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern unsigned short v17 (signed int, unsigned int, signed short);
extern unsigned short (*v18) (signed int, unsigned int, signed short);
extern void v19 (unsigned char, signed short, signed int);
extern void (*v20) (unsigned char, signed short, signed int);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern signed int v23 (unsigned int, unsigned int, unsigned short);
extern signed int (*v24) (unsigned int, unsigned int, unsigned short);
extern signed short v25 (unsigned int, signed short);
extern signed short (*v26) (unsigned int, signed short);
unsigned short v27 (unsigned short);
unsigned short (*v28) (unsigned short) = v27;
extern unsigned int v29 (signed char, signed short);
extern unsigned int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v51 = 0;
unsigned char v50 = 1;
unsigned int v49 = 1U;

unsigned short v27 (unsigned short v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = 2;
unsigned int v54 = 5U;
unsigned int v53 = 5U;
trace++;
switch (trace)
{
case 1: 
return 2;
case 3: 
return 7;
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed short v58 = 3;
signed int v57 = 0;
signed short v56 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v59, signed short v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = -3;
unsigned short v63 = 3;
signed short v62 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 4;
signed int v67 = 1;
signed char v66 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v69;
signed short v70;
v69 = v68 - 7;
v70 = v7 (v69);
history[history_index++] = (int)v70;
}
break;
case 6: 
{
unsigned int v71;
signed short v72;
signed short v73;
v71 = 1U + 5U;
v72 = -1 - -2;
v73 = v25 (v71, v72);
history[history_index++] = (int)v73;
}
break;
case 8: 
return -3;
case 9: 
{
unsigned int v74;
signed short v75;
signed short v76;
v74 = 6U - 7U;
v75 = -4 + -1;
v76 = v25 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}
