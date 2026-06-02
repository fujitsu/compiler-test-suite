#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed char v3 (unsigned int, unsigned int);
extern signed char (*v4) (unsigned int, unsigned int);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern unsigned short v9 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned short);
unsigned char v11 (signed int, unsigned char, signed int, unsigned char);
unsigned char (*v12) (signed int, unsigned char, signed int, unsigned char) = v11;
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
unsigned int v15 (unsigned char, signed short, signed char, signed int);
unsigned int (*v16) (unsigned char, signed short, signed char, signed int) = v15;
extern unsigned char v17 (signed short, signed char);
extern unsigned char (*v18) (signed short, signed char);
extern signed short v19 (signed int, unsigned short, signed int, unsigned short);
extern signed short (*v20) (signed int, unsigned short, signed int, unsigned short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v48 = -3;
signed short v47 = -1;
signed int v46 = 0;

unsigned int v15 (unsigned char v49, signed short v50, signed char v51, signed int v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = 1;
unsigned char v54 = 6;
signed short v53 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
unsigned char v58 = 2;
signed char v57 = -1;
signed int v56 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v59, unsigned char v60, signed int v61, unsigned char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = -1;
unsigned int v64 = 6U;
signed char v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned char v68 = 4;
unsigned int v67 = 2U;
signed int v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
unsigned short v71 = 3;
signed int v70 = 3;
signed char v69 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v72;
signed char v73;
v72 = 3 - -4;
v73 = v27 (v72);
history[history_index++] = (int)v73;
}
break;
case 6: 
{
signed short v74;
signed char v75;
unsigned char v76;
v74 = -2 - -2;
v75 = -1 + v69;
v76 = v17 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
